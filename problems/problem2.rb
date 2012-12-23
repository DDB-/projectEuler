x = 0
y = 1
z = x + y
temp = 0
sum = 0
while z < 4000000
  if (z % 2) == 0
    sum += z
    temp = y
    y = z
    x = y
  end
end
printf("The sum is %d", sum)
