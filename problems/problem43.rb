i = 10
prev_begins = []
matches_old = []
matches_new = []
numbers_to = [13,11,7,5,3,2]
counter = 0
while i < 1000
	if i % 17 == 0 and i.to_s.length == i.to_s.split('').uniq.length
	  prev_begins << i.to_s.split('')[0..1].join
	  if i < 100
	    matches_old << ("0"+i.to_s)
	  else
	    matches_old << i
	  end
	end
	i += 1
end
while counter < 6
  i = 10
  new_num = 0 
  while i < 1000
    i = "0" + i.to_s if i < 100
    if i.to_i % numbers_to[counter] == 0 and i.to_s.length == i.to_s.split('').uniq.length and prev_begins.include? i.to_s.split('')[1..2].join
      matches_old.each do |index|
        if index.to_s.split('')[0..1].join == i.to_s.split('')[1..2].join
          new_num = (i.to_s.split('')[0] + index.to_s)
          if new_num.split('').uniq.length == new_num.length
            matches_new << new_num
          end
        end
      end
    end
    i = i.to_i
    i += 1
  end
  prev_begins = []
  matches_new.each do |index|
    prev_begins << index.to_s.split('')[0..1].join
  end
  matches_old = matches_new
  matches_new = []
  counter += 1
end
count = 0
matches_old.each do |index|
  if count < 3
    matches_new << ("4" + index).to_i
  else
    matches_new << ("1" + index).to_i
  end
  count += 1
end
sum = 0
matches_new.each do |index|
  sum += index
end
print sum