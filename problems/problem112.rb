require 'Euler'

sum = 0
i = 1
while true
	sum += 1.000 if Euler.bouncy?(i)
	break if i > 500000 and sum/i == 0.99
	i += 1
end
print i
