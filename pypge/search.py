import model
import expand
import memoize
import evaluate

import numpy
import sympy
import lmfit
from deap.tools import emo

import networkx as nx

class PGE:
	
	def __init__(self,**kwargs):
		# default values
		self.max_iter = 100
		self.pop_count = 3

		self.min_size = 1
		self.max_size = 64
		self.min_depth = 1
		self.max_depth = 6

		self.max_power = 5

		self.zero_epsilon = 1e-6
		self.err_method = "mse"

		self.system_type = None
		self.search_vars = None
		self.usable_vars = None
		self.usable_funcs = None

		# override with kwargs
		for key, value in kwargs.items():
			# print key, value
			setattr(self, key, value)


		self.vars = sympy.symbols(self.usable_vars)
		if type(self.vars) is sympy.Symbol:
			self.vars = [self.vars]

		if not self.check_config():
			print "ERROR: config missing values"
			return

		self.memoizer = memoize.Memoizer(self.vars)
		self.grower = expand.Grower(self.vars, self.usable_funcs)

		# Pareto Front stuff
		self.nsga2_list = []
		self.spea2_list = []
		self.nondom_list = []
		self.lognondom_list = []
		self.final = []

		# Relationship Graph
		self.root_model = model.Model(None)
		self.root_model.id = -1

		self.graph = nx.MultiDiGraph()
		self.graph.add_node(self.root_model)



	# sklearn estimator interface functions
	def fit(self, X_train,Y_train):
		self.X_train = X_train
		self.Y_train = Y_train
		
		self.loop()


	def check_config(self):
		if self.system_type == None \
		or self.search_vars == None \
		or self.usable_vars == None:
			return False
		return True


	def loop(self):

		# preloop setup (generates,evals,queues first models)
		first_exprs = self.grower.first_exprs()
		to_eval = []
		for i,m in enumerate(first_exprs):
			did_ins = self.memoizer.insert(m)
			size = m.size()
			m.rewrite_coeff()
			# print i,m.expr, size, m.id

			if did_ins:
				to_eval.append(m)

		for m in to_eval:
			passed = self.eval(m)
			if not passed or m.error is not None:
				print m.error, m.exception
				continue
			self.push(m)
			self.graph.add_node(m)
			self.graph.add_edge(self.root_model, m, relation="first")


		# main loop for # iterations
		for I in range(self.max_iter):
			print "\nITER: ", I

			popd = self.pop()

			# print "  expand..."
			expanded = []
			for i,p in enumerate(popd):
				p.state = "popped"
				ex = self.grower.grow(p)
				# print "    ", p, " -> ", len(ex)
				# print "    ", p, "  ~~  ", picked[i]
				expanded.extend(ex)
				p.state = "expanded"
				self.final.append(p)
				p.state = "finalized"

			print "  expanded: ", len(expanded) 
			# for e in expanded:
			# 	print e

			to_eval = []
			for i,m in enumerate(expanded):

				did_ins = self.memoizer.insert(m)
				size = m.size()
				m.rewrite_coeff()

				# Do some graph stuff here?
				if did_ins:
					to_eval.append(m)

			for m in to_eval:
				passed = self.eval(m)
				if not passed or m.error is not None:
					print m.error, m.exception
					continue
				self.push(m)

		# finalization
		self.final_paretos = emo.sortLogNondominated(self.final, len(self.final))

					

	def push(self, model):
		# self.queue.push(model)
		self.nsga2_list.append(model)
		self.spea2_list.append(model)
		# self.nondom_list.append(model)
		# self.lognondom_list.append(model)
		model.state = "queued"

	def pop(self):
		# print "  pop'n..."
		nsga2_tmp = emo.selNSGA2(self.nsga2_list, len(self.nsga2_list))
		spea2_tmp = emo.selSPEA2(self.spea2_list, len(self.spea2_list))
		# nondom_tmp = emo.sortNondominated(self.nondom_list, len(self.nondom_list))
		# lognondom_tmp = emo.sortLogNondominated(self.lognondom_list, len(self.lognondom_list))

		# nondom_tmp = [item for sublist in nondom_tmp for item in sublist]
		# lognondom_tmp = [item for sublist in lognondom_tmp for item in sublist]

		self.nsga2_popd, self.nsga2_list = nsga2_tmp[:self.pop_count], nsga2_tmp[self.pop_count:]
		self.spea2_popd, self.spea2_list = spea2_tmp[:self.pop_count], spea2_tmp[self.pop_count:]
		# self.nondom_popd, self.nondom_list = nondom_tmp[:self.pop_count], nondom_tmp[self.pop_count:]
		# self.lognondom_popd, self.lognondom_list = lognondom_tmp[:self.pop_count], lognondom_tmp[self.pop_count:]

		popd_set = set()
		# print "  nsga2:"
		for p in self.nsga2_popd:
			popd_set.add(p)
			# print "    ", p

		# print "  spea2:"
		for p in self.spea2_popd:
			popd_set.add(p)
			# print "    ", p

		# # print "  nondom:"
		# for p in self.nondom_popd:
		# 	popd_set.add(p)
		# 	# print "    ", p

		# # print "  lognondom:"
		# for p in self.lognondom_popd:
		# 	popd_set.add(p)
		# 	# print "    ", p

		popd_list = list(popd_set)
		print "  uniqued pop'd:"
		for p in popd_list:
			p.popped = True
			print "    ", p

		self.nsga2_list = [m for m in self.nsga2_list if not m.popped]
		self.spea2_list = [m for m in self.spea2_list if not m.popped]
		# self.nondom_list = [m for m in self.nondom_list if not m.popped]
		# self.lognondom_list = [m for m in self.lognondom_list if not m.popped]

		return popd_list


	def eval(self, model):
		# fit the model
		evaluate.Fit(model, self.vars, self.X_train, self.Y_train)
		if model.error or not model.fit_result.success:
			model.state = "errored"
			return False
		model.state = "fitted"
		
		# score the model
		y_pred = evaluate.Eval(model, self.vars, self.X_train)

		model.score, err = evaluate.Score(self.Y_train, y_pred, self.err_method)
		if err is not None:
			print err
			model.error = "errored while scoring"
			model.state = "errored"
			return False
		
		model.r2, err = evaluate.Score(self.Y_train, y_pred, "r2")
		if err is not None:
			model.error = "errored while r2'n"
			model.state = "errored"
			return False
		
		model.evar, err = evaluate.Score(self.Y_train, y_pred, "evar")
		if err is not None:
			model.error = "errored while evar'n"
			model.state = "errored"
			return False
		
		
		# build the fitness for selection
		vals = (model.size(), model.score)
		model.fitness.setValues( vals )
		model.state = "scored"

		return True # passed









