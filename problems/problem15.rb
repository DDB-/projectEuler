def factorial(num)
  product = 1
  for i in 1..num
    product = product * i
  end
  return product
end
numerator = factorial(40)
denominator = factorial(20) * factorial(20)
routes = numerator/denominator
print routes
