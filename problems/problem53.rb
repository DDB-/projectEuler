require 'Euler'

result = 1
count = 0
for i in 23..100
	for r in 1..i
		result = Euler.factorial(i) / (Euler.factorial(r) * Euler.factorial(i-r))
		count += 1 if result > 1000000
	end
end
puts count
