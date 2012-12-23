class Integer
	def rev
		return self.to_s.reverse.to_i
	end
	def palindrome?
		return true if self.to_s == self.to_s.reverse
		return false
	end
end
 
LIMIT = 50
lychrels = Array.new
 
1.upto(9999) do |i|
	current = i
	isLychrel = true #until proven innocent
 
	LIMIT.times do
		current = current + current.rev
		if current.palindrome? == true
			isLychrel = false
			break
		end
	end
	lychrels.push(i) if isLychrel == true
end
print "Number of lychrels below 10000: " + lychrels.length.to_s
