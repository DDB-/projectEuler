require 'Euler'
num = 0
count = 0
k = 1
for i in 1..100
	for j in 1..22
		num = Euler.pow(i, j)
		if num.to_s.length.to_i == j
			count += 1
		end
	end
end
print count
