require 'Euler'

abun, sums = [], []
i, sss= 1, 0
while i < 20200
	abun << i if Euler.abundant(i)
	i += 1
end
length = abun.length-1
for i in 0..length
	for j in 0..length
		sums << (abun[i] + abun[j])
	end
end
sums = sums.uniq
for k in 1..20200
	sss += k unless sums.include? k
end
print sss

