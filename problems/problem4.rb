def palindrome(num)
  num = num.to_s
  len = num.length
  num = num.split('')
  check = len/2 - 1
  for i in 0..check
    return false if Integer(num[i]) != Integer(num[-(i+1)])
  end
  return true
end
max = 0
for i in 100..999
  for j in i..999
    if palindrome(j*i)
      max = j*i if j*i > max
    end
  end
end
print max
