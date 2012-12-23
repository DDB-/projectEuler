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

sum = 0
max = 0
i = 7
while sum < 1000000
  sum += i if(is_prime(i))
  max = sum if(is_prime(sum))
  i += 1
end
print max
