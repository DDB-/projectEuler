a = 28433
c = 1
b = 1
for i in 1..7830457
	b = a * 2
	if b > 10000000000
		c = b%10000000000
		a = c
	else
		a = b
	end
end
num = b+1
print "Last digits are: ", num
