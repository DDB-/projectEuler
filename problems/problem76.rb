def parts(n, a)
	return 0 if n < 0
	return 1 if n == 0
	return a[n] if a[n] > 0
	
	pn = 0
	for k in 1..n
		temp1 = n-k*(3*k-1)/2
		temp2 = n-k*(3*k+1)/2
		
		pn1 = parts(temp1,a)
		pn2 = parts(temp2,a)
		pn += ((-1)**(k+1))*(pn1 + pn2)
	end
	a[n] = pn
	return pn
end

a = Array.new()
for i in 0..100
	a[i] = 0
end

puts parts(100, a)-1
