dems, m_count, mul = [], 1, 2
for i in 0..99
	if m_count%3 == 0
		dems[i] = mul
		mul += 2
	else
		dems[i] = 1
	end
	m_count += 1
end
dems.each do |il|
	print il, " "
end
i, dem, num = 99, 1, 2
while i >= 0
	num, dem = dem, dems[i]*dem + num
	i -= 1
end
num = dem
num = num.to_s.split('')
sum = 0
num.each do |n|
	sum += n.to_i
end
print sum
