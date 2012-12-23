def f(n, k):
	if n < 0 or len(k) < 1:
		return 0
	elif n == 0:
		return 1
	else:
		return f(n, k[:-1]) + f(n-k[-1],k)

print f(200, [1,2,5,10,20,50,100,200])
