def reverse(num)
	num = num.to_s.split('')
	len = (num.length)*0.5
	for i in 0...len
		temp = num[i]
		num[i] = num[-(i+1)]
		num[-(i+1)] = temp
	end
	num = num.to_s
	num = num.to_i
	return num
end

def palindrome(num)
  num = num.to_s
  len = num.length
  num = num.split('')
  check = len/2 - 1
  for i in 0..check
    return false if Integer(num[i]) != Integer(num[-(i+1)])
  end
  return true
end

def is_Lychrel(num)
	num1 = num
	num2 = reverse(num1)
	for i in 1..50
		sum = num1 + num2
		return false if palindrome(sum)
		num1 = sum
		num2 = reverse(sum)
	end
	return true
end
count = 0
for i in 1...10000
	count += 1 if is_Lychrel(i)
end
print "Number of Lycrhels under 10000 is: #{count}"
