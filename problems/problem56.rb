require 'Euler'
max = 0
num = 0
for i in 2..100
	for j in 2..100
		num = Euler.dig_sum(Euler.pow(i,j))
		max = num if num > max
	end
end
print max
