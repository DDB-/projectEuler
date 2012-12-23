require 'Euler'

def absol(num)
	return num*-1 if num < 0
	return num
end

pents = []
for i in 1..2000
	pents[i-1] = (i*(3*i-1))/2
end
sum,diff = 0,0
min = 1000000000
for i in 1000...1200
print i, "\n"
	for j in 0...1200
		sum = pents[i] + pents[j]
		if pents.include? sum
			diff = absol(pents[i]-pents[j])
			if pents.include? diff
				print diff, "\n"
				if diff < min
					min = diff
				end
			end
		end
	end
end
print "Min is ", min, "\n"
		
