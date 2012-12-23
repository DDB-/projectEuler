def pyth
  a = 100.0
  b = 500.0
  c = Math.sqrt(a*a + b*b)
  sum = 0.0
  while sum != 1000.0
    a = 100.0
    b -= 1.0
    while sum != 1000.0 and a <= 500.0
      a += 1
      c = Math.sqrt(a*a + b*b)
      sum = a + b + c
    end
  end
  return (a*b*c)
end

print pyth
