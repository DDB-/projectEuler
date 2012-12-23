require 'Euler'

sum = 0
hash = {}
hash[1] = 1
for i in 1..567
	num = i
	while true
		if num == 1
			hash[i] = 1
			break
		end
		if num == 89
			hash[i] = 89
			break
		end
		num = Euler.dig_sq_sum(num)
	end
end
for i in 1..10000000
	num = Euler.dig_sq_sum(i)
	sum +=1 if hash[num] == 89
end
print sum
	
		

