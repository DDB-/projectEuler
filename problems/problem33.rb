require 'Euler'

def is_curious(n1, n2)
	return false if n1%10 == 0
	return false if n2%10 == 0
	store = n1/n2
	n1 = n1.to_i.to_s.split('')
	n2 = n2.to_i.to_s.split('')
	
	if n1[0] == n2[0]
		if n1[1].to_f/n2[1].to_f == store
			return true
		end
	end
	if n1[1] == n2[0]
		if n1[0].to_f/n2[1].to_f == store
			return true
		end
	end
	if n1[0] == n2[1]
		if n1[1].to_f/n2[0].to_f == store
			return true
		end
	end
	if n1[1] == n2[1]
		if n1[0].to_f/n2[0].to_f == store
			return true
		end
	end
	return false
end

num = 10.0
dem = 11.0
numers = []
demons = []
while num <= 99.0
	while dem <= 99.0
		if is_curious(num, dem)
			numers << num
			demons << dem
		end
		dem += 1.0
	end
	num += 1.0
	dem = num + 1.0
end
big_num = 1
big_dem = 1
div = 0
for i in 0..3
	div = Euler.gcd(numers[i],demons[i])
	big_num *= (numers[i] / div)
	big_dem *= (demons[i] / div)
end
div = Euler.gcd(big_num, big_dem)
puts big_dem/div

