sum = 0
for i in 1..100
  y = gets
  sum += Integer(y)
end
sum = sum.to_s.split('')
for i in 0...10
	print Integer(sum[i]), " "
end
