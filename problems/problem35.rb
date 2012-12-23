def is_prime(num)
  i = 2
  while i < Math.sqrt(num) + 1
    if num%i == 0
      return false
    end
    i += 1
  end
  return true
end

def is_circular(num)
  return false if is_prime(num) == false
  k = 0
  temp = 0
  num = num.to_s.split('')
  len = num.length - 1
  for i in 0...len
    k = 1
    temp = num[len]
    while (len - k) >= 0
      num[len - k + 1] = num[len - k]
      k += 1
    end
    num[0] = temp
    num = num.to_s
    return false if is_prime(Integer(num)) == false
    num = num.to_s.split('')
    len = num.length - 1
  end
  return true
end

sum = 13
i = 111
while i < 1000000
  if is_circular(i)
    sum += 1 
    puts i
  end
  i += 2
end
puts sum
