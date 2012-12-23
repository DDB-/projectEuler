primes = [2,3,5,7,11,13,17,19,23,29]
num = 1
i = 0
while num < 1000000
	num *= primes[i]
	i += 1
end
print num/primes[i-1]
