count = 0
max = 0
num = 0
maxnum = 0
for i in 3...1000000
  num = i
  count = 1
  while num > 1
    if num%2 == 0
      num = num/2
    else
      num = 3*num + 1
    end
    count += 1
  end
  if count > max
    maxnum = i
    max = count
  end
  puts i if i%10000 == 0
end

print maxnum, " ", max
