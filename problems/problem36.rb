require 'Euler'
sum = 0
for i in 1..1000000
	if Euler.palindrome?(i)
		sum += i if Euler.palindrome?(i.to_s(2).to_i)
	end
end
print sum
