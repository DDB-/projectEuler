import sys
from math import sqrt, pow

def is_pentagonal(num):
	c = num*-2
	
	rn1 = 1 + sqrt(1 - 12*c)
	print rn1
	return rn1 % 3 == 0

pents = [1,5]		
for num in range(3, 1000000):
	tester = pents[-1]
	for i in pents:
		if i == tester:
			pents.append(num * (3 * num - 1) / 2)
			break
		if (tester - i) in pents:
			print "Beats test 1", tester, i
			if is_pentagonal(tester + i):
				print "WINNER", tester, i, tester-i
				sys.exit()
				
			
