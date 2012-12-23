require 'Euler'

up = 1.0/2.0
down = 1.000000000000/3.0000000000000
count = 0
dem = 4.0
num = 1.0
ber = 0.0

while dem <= 10000
	num = 1.0
	while num/dem < up
		ber = num/dem
		if ber < up and ber > down
			if Euler.gcd(num,dem) == 1
				count += 1 
			end
		end
		num += 1.0
	end
	dem += 1.0
	puts dem if dem%100 == 0
end
puts count

