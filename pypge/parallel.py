import search


def unwrap_self_peek_model_queue(pge_instance):
	while True:
		try:
			val = pge_instance.peek_in_queue.get()
			if val is None:
				break;
			pos = val[0]
			modl = val[1]

			passed = search.PGE.peek_model(pge_instance, modl)
			if not passed:
				pge_instance.peek_out_queue.send( (pos, modl.error, modl.exception) )
			else:
				vals = [ (str(c),modl.params[str(c)].value) for c in modl.cs ]
				ret_data = {
					'score': modl.score,
					'r2': modl.r2,
					'evar': modl.evar,
					'params': vals,
					'nfev': modl.fit_result.nfev
				}
				pge_instance.peek_out_queue.put( (pos, None, ret_data) )
		except Exception, e:
			print "breaking!", e
			break

def unwrap_self_eval_model_queue(pge_instance):
	while True:
		try:
			val = pge_instance.eval_in_queue.get()
			if val is None:
				break;
			pos = val[0]
			modl = val[1]

			passed = search.PGE.eval_model(pge_instance, modl)
			if not passed:
				pge_instance.eval_out_queue.send( (pos, modl.error, modl.exception) )
			else:
				vals = [ (str(c),modl.params[str(c)].value) for c in modl.cs ]
				ret_data = {
					'score': modl.score,
					'r2': modl.r2,
					'evar': modl.evar,
					'params': vals,
					'nfev': modl.fit_result.nfev
				}
				pge_instance.eval_out_queue.put( (pos, None, ret_data) )
		except Exception, e:
			print "breaking!", e
			break
