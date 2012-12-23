str = ""
(1..250000).each do |i|
	str  << i.to_s
end
str = str.split('')
puts str[0].to_i * str[9].to_i * str[99].to_i * str[999].to_i * str[9999].to_i * str[99999].to_i * str[999999].to_i
