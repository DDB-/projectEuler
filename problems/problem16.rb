def pow(num, pow)
  prod = num
  return 1 if pow == 0
  for i in 1...pow 
    prod *= num
  end
  return prod
end
x = pow(2, 1000)
y = x.to_s.split('')
sum = 0
for i in 0..1000
  sum += Integer(y[i])
end
print sum
