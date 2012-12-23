def is_prime(num)
  i = 2
  while i < Math.sqrt(num) + 1
    if num%i == 0
      return false
    end
    i += 1
  end
  return true
end

i = 5
sum = 5
while i < 2000000
  sum += i if is_prime(i)
  i += 2
  sum += i if is_prime(i)
  i += 4
end

print "The sum is ", sum
