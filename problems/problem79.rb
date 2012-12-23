file = open("keylog.txt", "r")
array, i = [], 0
while line = file.gets
	array[i] = line.chomp
	i += 1
end
array = array.uniq.sort
ones, twos, threes, sixes, sevens, eights, nines = [12], [12], [12], [12], [12], [12], [12]
n = 0
while n < array.length
  temp = array[n].split('')
  if temp[0].to_i == 1
    ones << temp[1].to_i << temp[2].to_i
  end
  if temp[0].to_i == 2
    twos << temp[1].to_i << temp[2].to_i
  end
  if temp[0].to_i == 3
    threes << temp[1].to_i << temp[2].to_i
  end
  if temp[0].to_i == 6
    sixes << temp[1].to_i << temp[2].to_i
  end
  if temp[0].to_i == 7
    sevens << temp[1].to_i << temp[2].to_i
  end
  if temp[0].to_i == 8
    eights << temp[1].to_i << temp[2].to_i
  end
  if temp[0].to_i == 9
    nines << temp[1].to_i << temp[2].to_i
  end
  n += 1
end
ones, twos, threes, sixes, sevens, eights, nines = ones.uniq, twos.uniq, threes.uniq, sixes.uniq, sevens.uniq, eights.uniq, nines.uniq
new_arr = []
new_arr[0] = 0
new_arr[1] = ones.length
new_arr[2] = twos.length
new_arr[3] = threes.length
new_arr[4], new_arr[5] = 0, 0
new_arr[6] = sixes.length
new_arr[7] = sevens.length
new_arr[8] = eights.length
new_arr[9] = nines.length  
for i in 1..7
  max = 0
  max_i = 0
  for i in 1..9
    if new_arr[i] > max
      max_i = i
      max = new_arr[i]
    end
  end
  print max_i
  new_arr[max_i] = 0
end
print 0