require 'Euler'

max = 0
i = 5000
num1,num2,num3,num4,num5 = 0,0,0,0,0
stor = ""
while i < 9999
	num1 = i
	num2 = 2*i
	stor = num1.to_s + num2.to_s
	max = stor.to_i if Euler.pandigital?(stor.to_i) and stor.to_i > max
	i += 1
end
print max
	
