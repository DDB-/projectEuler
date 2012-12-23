from math import log10

file = open('base_exp.txt', 'r')

max_sum = 0
max_line = 0
lc = 0
for line in file:
	lc += 1
	a = line.split(',')[0]
	b = line.split(',')[1]
	result = float(int(b)) * log10(float(int(a)))
	if result > max_sum:
		max_sum = result
		max_line = lc
print max_sum, " ", max_line
