x = 1
sum = 0
while x < 1000
  if x % 3 == 0 or x % 5 == 0
    sum += x
  end
  x = x + 1
end
printf("The sum is %d", sum)
