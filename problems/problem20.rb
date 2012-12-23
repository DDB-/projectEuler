def factorial(num)
  product = 1
  for i in 1..num
    product = product * i
  end
  return product
end
sum = 0
i = 0
f100 = factorial(100)
f100 = f100.to_s.split('')
while f100[i] != nil
  sum += Integer(f100[i])
  i += 1
end
print sum
