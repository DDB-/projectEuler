def triangle(index)
	c = (index*(index + 1))
	num = c/2
	return num
end
pent = Array.new
pent_i = 166
hex = Array.new
hex_i = 144
for i in 0..100000
	pent[i] = (pent_i*(3*pent_i - 1))*0.5
	pent_i += 1
	hex[i] = (hex_i*(2*hex_i - 1))
	hex_i += 1
end

tri_i = 55000
match_p = false
match_h = false
while match_p == false or match_h == false 
	curr = triangle(tri_i)
	match_p = false
	match_h = false
	for i in 0..100000
		match_p = true if pent[i] == curr
	end
	for i in 0..100000
		match_h = true if hex[i] == curr
	end
	tri_i += 1
	if tri_i%100 == 0
		puts tri_i 
		puts curr
	end
end

print curr
