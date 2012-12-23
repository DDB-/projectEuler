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

i = 3
count = 2
while count < 10001
  i += 2
  count += 1 if is_prime(i)
end

print "The 10001st prime is is ", i
