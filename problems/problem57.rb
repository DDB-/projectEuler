count, deep, num, dem, d_start = 0, 1, 1, 2, 1
while d_start < 1000
  deep = d_start
  num, dem = 1, 2
  while deep > 0
    num = num + 2*dem
    num, dem = dem, num
    num += dem if deep == 1
    deep -= 1
  end
  d_start += 1
  count += 1 if num.to_s.length > dem.to_s.length
end
print count, "\n"