def pow(num, pow)
  prod = num
  return 1 if pow == 0
  for i in 1...pow 
    prod *= num
  end
  return prod
end
x = 1
y = 1
count = 2
while y/pow(10, 999) < 1.0
  temp = y
  y = x + y
  x = temp
  count += 1
end
puts count
puts y

