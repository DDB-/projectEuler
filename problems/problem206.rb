i = Math.sqrt(102030405060708090)
num = 1
k = ""
while i < 473000000
	num = i**2
	k = num.to_s.split('')
	break if k[0] == "1" and k[2] == "2" and k[4] == "3" and k[6] == "4" and k[8] == "5" and k[10] == "6" and k[12] == "7" and k[14] == "8" and k[16] == "9" and k[18] == "0"
	i += 1
	puts i if i %1000000 == 0
end
puts i
