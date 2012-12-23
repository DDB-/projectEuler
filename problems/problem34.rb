def factorial(num)
  product = 1
  for i in 1..num
    product = product * i
  end
  return product
end

def is_good_nyeaguh(num)
  sum = 0
  store = num
  num = num.to_s.split('')
  len = num.length - 1
  for i in 0..len
    sum += factorial(Integer(num[i]))
  end
  return true if sum == store
  return false
end

sum = 0
for i in 10..2000000
  sum += i if is_good_nyeaguh(i)
  puts i if i%50000 == 0
end

print sum
