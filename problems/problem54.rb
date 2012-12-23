def card_value(k)
	k = k.split("")[0]
	return 14 if k == "A"
	return 13 if k == "K"
	return 12 if k == "Q"
	return 11 if k == "J"
	return 10 if k == "T"
	return k.to_i
end

def cards_value(k)
	cards = Array.new()
	k.each do |i|
		cards << card_value(i)
	end
	return cards
end

def card_suit(k)
	return k.split("")[1]
end

def straight_flush(cards)
	flagS = true
	flagF = true
	r_suit = card_suit(cards[0])
	cards.each do |k|
		flagF = false if !k.include?(r_suit)
	end
	d_cards = cards_value(cards).sort.reverse
	for i in 1..4
		flagS = false if (d_cards[i]+1 != d_cards[i-1])
	end
	if flagF and flagS
		return 10 if d_cards[0] == 14
		return 9
	end
	return 6 if flagF and !flagS
	return 5 if flagS and !flagF
	return 0
end

def four(cards)
	values = cards_value(cards)
	if values.uniq.length == 2
		if values.sort[0] == values.sort[3] or values.sort[1] == values.sort[4]
			return 8
		else
			return 7
		end
	end
	if values.uniq.length == 3
		flag = 0
		trips = values.sort[2]
		values.each do |k|
			flag += 1 if k == trips
		end
		return 4 if flag == 3
		return 3
	end
	return 0
end

def highcard(cards)
	values = cards_value(cards)
	return 1 if values.uniq.length == 5
	return 2
end

def compareh(c, d)
	c = cards_value(c).sort.reverse
	d = cards_value(d).sort.reverse
	for i in 0..4
		return true if c[i] > d[i]
		return false if d[i] > c[i]
	end
	return false
end

def det_pair(hand)
	values = cards_value(hand).sort
	for i in 0..4
		return values[i] if values[i] == values[i+1]
	end
end

def comparep(c,d)
	v1 = cards_value(c).sort.reverse
	v2 = cards_value(d).sort.reverse
	a, b = det_pair(c), det_pair(d)
	return true if a>b
	return false if a<b
	v1 = v1.delete(a)
	v2 = v2.delete(b)
	for i in 0..2
		return true if v1[i] > v2[i]
		return false if v1[i] < v2[i]
	end
	return false
end

def compareR(c,d)
	return 1
end

file = File.new("poker.txt", "r")
count = 0
while line = file.gets
	line = line.strip.split(" ")
	a = line[0..4]
	b = line[5..9]
	a_temp = 0
	b_temp = 0
	a_temp = straight_flush(a) if straight_flush(a) > a_temp
	a_temp = four(a) if four(a) > a_temp
	a_temp = highcard(a) if highcard(a) > a_temp
	b_temp = straight_flush(b) if straight_flush(b) > b_temp
	b_temp = four(b) if four(b) > b_temp
	b_temp = highcard(b) if highcard(b) > b_temp
	if a_temp > b_temp
		count += 1
	elsif a_temp == b_temp
		if a_temp == 1 and compareh(a,b)
			count += 1
		elsif a_temp == 2 and comparep(a,b)
			count +=1
		elsif a_temp >= 3
			count += 1
		end
	end
end
puts count
