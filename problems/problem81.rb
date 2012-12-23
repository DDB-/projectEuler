file = File.new("matrix.txt", "r")
i, j, array, totals = 0, 0, [], []
for i in 0..79
  array[i] = []
  totals[i] = []
end
while line = file.gets
	line = line.chomp.split(',')
	i = 0
	while i < 80
		array[j][i] = line[i].to_i
		totals[j][i] = 0
		i += 1
	end
	j += 1
end
totals[0][0] = array[0][0]
for i in 1..79
  totals[0][i] = totals[0][i-1] + array[0][i]
  totals[i][0] = totals[i-1][0] + array[i][0]
end
for i in 1..79
  for j in 1..79
    if totals[i-1][j] < totals[i][j-1]
      totals[i][j] = totals[i-1][j] + array[i][j]
    else
      totals[i][j] = totals[i][j-1] + array[i][j]
    end
  end
end
print totals[79][79], "\n"