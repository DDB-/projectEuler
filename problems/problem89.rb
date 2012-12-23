def fromBadRoman(s)
	s = s.split("")
	num = 0
	i = 0
	while i < s.length
		if s[i] == "M"
			num += 1000
		elsif s[i] == "D"
			num += 500
		elsif s[i] == "C"
			if s[i+1] == "M"
				num += 900
				i += 1
			elsif s[i+1] == "D"
				num += 400
				i += 1
			else
				num += 100
			end
		elsif s[i] == "L"
			num += 50
		elsif s[i] == "X"
			if s[i+1] == "C"
				num += 90
				i += 1
			elsif s[i+1] == "L"
				num += 40
				i += 1
			else
				num += 10
			end
		elsif s[i] == "V"
			num += 5
		elsif s[i] == "I"
			if s[i+1] == "X"
				num += 9
				i += 1
			elsif s[i+1] == "V"
				num += 4
				i += 1
			else
				num += 1
			end
		end
		i += 1
	end
	return num
end

def toRoman(num)
	roman = ""
	while num >= 1000
		roman += "M"
		num -= 1000
	end
	while num >= 900
		roman += "CM"
		num -= 900
	end
	while num >= 500
		roman += "D"
		num -= 500
	end
	while num >= 400
		roman += "CD"
		num -= 400
	end
	while num >= 100
		roman += "C"
		num -= 100
	end
	while num >= 90
		roman += "XC"
		num -= 90
	end
	while num >= 50
		roman += "L"
		num -= 50
	end
	while num >= 40
		roman += "XL"
		num -= 40
	end
	while num >= 10
		roman += "X"
		num -= 10
	end
	while num >= 9
		roman += "IX"
		num -= 9
	end
	while num >= 5
		roman += "V"
		num -= 5
	end
	while num >= 4
		roman += "IV"
		num -= 4
	end
	while num >= 1
		roman += "I"
		num -= 1
	end
	return roman
end

file = File.new("roman.txt", "r")
count = 0
while line = file.gets
	num1 = fromBadRoman(line)
	roman = toRoman(num1)
	count += (line.to_s.strip.length - roman.length)
end
puts count
