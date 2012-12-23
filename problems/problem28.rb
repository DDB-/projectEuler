len = 3
w, wo = 3, 2
x, xo = 5, 4
y, yo = 7, 6
z, zo = 9, 8
sum = 1

while len <= 1001
  sum = sum + w + x + y + z
  wo += 8
  xo += 8
  yo += 8
  zo += 8
  x += xo
  y += yo
  w += wo
  z += zo
  len += 2
end
print sum
