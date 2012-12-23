count, i = 0, 27
while count < 124
	n1, n2, n3 = 1, 1, 3
	while n3 > 0 and n1*n2*n3 != 1
		n1, n2, n3 = n2, n3, (n1+n2+n3)%i
	end
	count += 1 if n3 > 0
	i += 2
end
print i-2
