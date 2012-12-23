require 'Euler'

i = 7654321
max = 0
while i > 1000000
	if Euler.pandigital?(i)
		if Euler.prime?(i)
			max = i
			break
		end
	end
	i -= 2
end
print max
