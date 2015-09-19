import sympy
C = sympy.Symbol('C')
CS = [sympy.Symbol("C_"+str(i)) for i in range(8)]

from lmfit import Parameters
from deap import base, creator

creator.create("FitnessMin", base.Fitness, weights=(-1.0, -1.0))

class Model:

	def __init__(self, expr, xs=None, cs=None):
		self.id = -2
		self.parent_id = -2
		self.iter_id = -2

		# TODO add multiple boolean states, or enum consts
		self.popped = False
		self.state = "new"
		self.error = None
		self.exception = None

		self.orig = expr
		self.expr = None

		if expr is None:
			return

		self.xs = None
		self.cs = None
		self.params = None

		self.sz = 0
		self.score = None
		self.r2 = None
		self.evar = None

		self.fitness = creator.FitnessMin()

		self.rewrite_coeff()

		params = Parameters()
		for i,c in enumerate(self.cs):
			params.add('C_'+str(i), value=1.0)

		self.params = params

	def __hash__(self):
		return self.id

	def __cmp__(self, other):
		return cmp(self.id, other.id)

	def __str__(self):
		return "{:2d}  {:12.6f}  {:8.6f}  {:8.6f}  {}" \
			.format(self.size(),self.score,self.r2,self.evar,self.expr)


	def get_coeff(self):
		if self.coeff is not None:
			return self.coeff
		else:
			self.coeff = self.rewrite_coeff()

	def size(self):
		if self.sz == 0:
			self.sz = self.calc_tree_size()
		return self.sz

	def calc_tree_size(self):
		i = 0
		for e in sympy.preorder_traversal(self.expr):
			i+=1
		return i


	def rewrite_coeff(self):
		expr, ii = self._rewrite_coeff_helper(self.orig, 0)
		self.expr = expr
		self.cs = CS[:ii]


	def _rewrite_coeff_helper(self, expr, ii):
		ret = expr
		if not expr.is_Atom:
			args = []
			for i,e in enumerate(expr.args):
				if not e.is_Atom:
					ee, ii = self._rewrite_coeff_helper(e,ii)
					args.append(ee)
					# args = args + ee
				elif e == C:
					args.append(CS[ii])
					# args = args + cs[ii]
					ii += 1
				else:
					args.append(e)
			args = tuple(args)
			ret = expr.func(*args)
		return ret,ii



# x,y,z = sympy.symbols("x y z")

# print cs

# f = C*x+C*y+C*z
# F, ii = rewrite_coeff_helper(f,0)
# G, ii = rewrite_coeff_helper(f,3)
# args = (x,y,z)
# F = f.func(*args)
# print F

# g = f.subs(cs)
# print f
# print F
# print G
# print g
