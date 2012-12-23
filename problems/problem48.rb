def pow(num, pow)
  prod = num
  return 1 if pow == 0
  for i in 1...pow 
    prod *= num
  end
  return prod
end
sum = 0
for i in 1..1000
  sum += pow(i,i)
end
sum = sum.to_s.split('')
for i in -10..-1
  print sum[i], " "
end
