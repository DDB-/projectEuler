require 'Euler'

max, max_num = 0, 0
for i in 2..1000
  if Euler.modLen(i) > max
    max = Euler.modLen(i)
    max_num = i
  end
end
print max_num