def replace5(n)
	n = n.to_s.split('')
	n[-1] = "0"
	n << "5"
	return n.to_s.to_i
end

def addZeroes(n)
	n = n.to_s.split('')
	n << "0" << "0"
	return n.to_s.to_i
end

def computeDigits(n)
	a = 5*n
	b = 5
	
	while(b.to_s.length < 102)
		if(a >= b)
			a = a-b
			b += 10
		else
			a = addZeroes(a)
			b = replace5(b)
		end
	end
	return b-5
end

def computeSumOfDigits(n)
	n = computeDigits(n)
	n = n.to_s.split('')
	
	sum = 0
	n.each do |l|
		sum += l.to_i
	end
	return sum
end

#print computeSumOfDigits(99)
sum = 0
i = 1
while (i <= 100)
	sum += computeSumOfDigits(i)
	i += 1
end
print sum - 55 #-55 because 1,4,9,16,25,36,49,64,81,100 have their root included but shouldn't be 
