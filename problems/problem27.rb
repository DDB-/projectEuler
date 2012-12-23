require 'Euler'

count,n = 0,0
a,b = -1000, -1000
topc, topa, topb = 0,0,0
while a <= 1000
	b = -1000
	while b <= 1000
		count = 0
		n = 0
		while true
			result = n**2 + a*n + b
			if	Euler.prime?(result)
				count += 1
				n += 1
			else
				break
			end
		end
		if count > topc
			topc = count
			topa = a
			topb = b
		end
		b += 1
	end
	a += 1
end
print topa, " ", topb, " ", topa*topb, " ", topc

				
