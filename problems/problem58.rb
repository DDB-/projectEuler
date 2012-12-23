require 'Euler'

len = 3
w, wo = 3, 2
x, xo = 5, 4
y, yo = 7, 6
z, zo = 9, 8
ratio = 3/4.0
total = 4.0
primes = 3.0
puts ratio
while true
  wo += 8
  xo += 8
  yo += 8
  zo += 8
  x += xo
  y += yo
  w += wo
  z += zo
	primes += 1.0 if Euler.prime?(x)
	primes += 1.0 if Euler.prime?(y)
	primes += 1.0 if Euler.prime?(z)
	primes += 1.0 if Euler.prime?(w)
	total += 4.0
  len += 2
	ratio = primes/total
	break if ratio < 0.1
end
print len-2
