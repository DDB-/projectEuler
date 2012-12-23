def div_sum(num)
return 0 if num == 1
sum = 1
	for i in 2...num
		sum += i if num%i == 0
	end
	return sum
end
	
sum = 0
x, y = 0,0
for i in 1...10000
	x = i
	y = div_sum(x)
	if y > x
		if x == div_sum(y)
			sum += x
			sum += y
		end
	end
end

print sum
