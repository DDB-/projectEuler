def sum(max)
  i, sum = 1, 0
  while i <= max
    sum += i
    i += 1
  end
  return sum
end

def sum_squares(max)
  i, sum = 1, 0
  while i <= max
    sum += i*i
    i += 1
  end
  return sum
end

sqos = sum(100)*sum(100)
sosq = sum_squares(100)
difference = sqos - sosq
print "The difference between the sqaure of sums and sum of squares is ", difference
