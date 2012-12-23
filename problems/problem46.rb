require 'Euler'

def next_prime(num)
	return 3 if num == 2
	i = num + 2
	while true
		if Euler.prime?(i)
			return i
		else
			i += 2
		end
	end
end

def works?(num)
	prime = 2
	i = 1
	while prime < num
		temp = prime + 2*(i**2)
		return true if temp == num
		if temp > num
			prime = next_prime(prime)
			i = 1
		else
			i += 1
		end
	end
	return false
end

num = 35
while true 
	if !Euler.prime?(num) and !works?(num)
		puts num
		break
	end
	num += 2
end
