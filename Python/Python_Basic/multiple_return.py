def my_abs(x):
	if not isinstance(x, (int, float)):
		raise TypeError('Wrong input type')
	if x >= 0:
		return x, -x
	else:
		return -x, x

a, b = my_abs(-100)

print a, b