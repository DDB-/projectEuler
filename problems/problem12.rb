tri = 0
i = 1
while tri < 63000000
  tri += i
  i += 1
end

while true
  count = 0
  j = Math.sqrt(tri)+1
  for k in 1..j
    count += 1 if tri%k == 0
  end
  if count >= 250
    print tri
    break
  end
  tri += i
  i += 1
end

