from __future__ import division

import sympy

from lmfit import minimize, Parameters

from sklearn import metrics


def Fit(model, xs, X_train, Y_train):
	expr = model.expr

	def fcn2min(params, x_train, y_train):

		c_sub = [ (str(c), params[str(c)].value) for c in model.cs ]
		eqn = expr.subs(c_sub)

		f = sympy.lambdify(xs, eqn, "numpy")
		y_pred = f(*x_train)

		return y_pred - y_train

	result = None
	try:
		result = minimize(fcn2min, model.params, args=(X_train,Y_train))
	except Exception, e:
		model.exception = e
		model.error = "error"

	model.fit_result = result

	if model.error == "error":
		model.error = "numeric error during fitting"
	elif not result.success:
		model.error = "Error fitting: " + str(result.ier) + "  " + result.message


def Eval(model, xs, X_input):
	c_sub = [ (str(c), model.params[str(c)].value) for c in model.cs ]
	eqn = model.expr.subs(c_sub)

	f = sympy.lambdify(xs, eqn, "numpy")
	y_pred = f(*X_input)
	return y_pred

def Score(y_true, y_pred, err_metric):
	try:
		if err_metric == "mae":
			result = metrics.mean_absolute_error(y_true, y_pred)
		elif err_metric == "mse":
			result = metrics.mean_squared_error(y_true, y_pred)
		elif err_metric == "rmae":
			result = metrics.mean_absolute_error(y_true, y_pred)
			result = np.sqrt(result)
		elif err_metric == "rmse":
			result = metrics.mean_squared_error(y_true, y_pred)
			result = np.sqrt(result)
		elif err_metric == "r2":
			result = metrics.r2_score(y_true, y_pred)
		elif err_metric == "evar":
			result = metrics.explained_variance_score(y_true, y_pred)
		else:
			return (None, "error: unknown error metric")

		return (result, None)
	except Exception, e:
		return (None, "error: " + str(e))

