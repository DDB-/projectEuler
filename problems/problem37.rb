def is_prime(num)
  return false if num == 1
	return true if num == 2
	i = 2
  while i < Math.sqrt(num) + 1
    if num%i == 0
      return false
    end
    i += 1
  end
  return true
end

def pow(num, pow)
  prod = num
  return 1 if pow == 0
  for i in 1...pow 
    prod *= num
  end
  return prod
end

def check_zero(num)
	store = num.to_s.split('')
	len = store.length
	for i in 0...len
		if Integer(store[i]) == 0
			return true 
		end
	end
	return false
end

def trun_right(num)
  while num > 0
    if is_prime(num)
      num = num/10
    else
      return false
    end
  end
  return true
end

def trun_left(num)
	return false if check_zero(num)
	store = num
	num = num.to_s.split('')
	len = num.length - 1
	while len >= 0
		if is_prime(store)
			store = store - Integer(num[0])*pow(10, len)
			num = store.to_s.split('')
			len -= 1
		else
			return false
		end
	end
	return true
end

def trun(num)
	if trun_left(num) and trun_right(num)
		return true
	else
		return false
	end
end

count = 0
sum = 0
i = 11

while count < 11
	if trun(i)
		sum += i
		count += 1
		puts i
	end
	i += 2
	if trun(i)
		sum += i
		count += 1
		puts i
	end
	i += 4
end

print "Sum is ", sum

