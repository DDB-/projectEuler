def pow(num, pow)
  prod = num
  return 1 if pow == 0
  for i in 1...pow 
    prod *= num
  end
  return prod
end
def is_good_nyeaguh(num)
  sum = 0
  store = num
  num = num.to_s.split('')
  len = num.length - 1
  while len >= 0
    sum += pow(Integer(num[len]), 5)
    len -= 1
  end
  if sum == store
    return true
  else 
    return false
  end
end
sum = 0
for i in 10...1000000
  sum += i if is_good_nyeaguh(i)
  puts i if i%10000 == 0
end
print sum
