require 'Euler'

list_of = []
item, i, j = 0, 1.0, 1.0
while i < 1000.0
  j = 1.0
	while j < 1000.0
		result = Math.sqrt(i**2 + j**2)
		if result.to_i == result
			if result + i + j < 1000
				item = result + i + j
				list_of << item
			end
		end
		j += 1.0
	end
	i += 1.0
end
count, max, max_num, counter = 1, 0, 0, 0
while count <= 1000
  counter = 0
  list_of.each do |numb|
    if numb == count
      counter += 1
    end
  end
  if counter > max
    max_num = count
    max = counter
  end
  count += 1
end
print max_num