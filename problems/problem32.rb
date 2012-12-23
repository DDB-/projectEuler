require 'Euler'

#Do 2 dig times 3 dig
num1 = 10
num2 = 100
result = 0
stor = ""
to_sum = []
print Euler.pandigital?(1234567899)
while num1 < 100
	num2 = 100
	while num2 < 1000
		result = num1*num2
		stor = num1.to_s + num2.to_s + result.to_s
		to_sum << result if Euler.pandigital?(stor.to_i)
		num2 += 1
	end
	num1 += 1
end
num1 = 2
num2 = 1000
#Do 1 dig times 4 dig
while num1 <  10
	num2 = 1000
	while num2 < 10000
		result = num1*num2
		stor = num1.to_s + num2.to_s + result.to_s
		to_sum << result if Euler.pandigital?(stor.to_i)
		num2 += 1
	end
	num1 += 1
end
to_sum = to_sum.uniq
summ = 0
for i in 0..to_sum.length-1
	summ += to_sum[i]
end
print summ
