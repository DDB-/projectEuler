alpha = {
	"A" => 1,
	"B" => 2,
	"C" => 3,
	"D" => 4,
	"E" => 5,
	"F" => 6,
	"G" => 7,
	"H" => 8,
	"I" => 9,
	"J" => 10,
	"K" => 11,
	"L" => 12,
	"M" => 13,
	"N" => 14,
	"O" => 15,
	"P" => 16,
	"Q" => 17,
	"R" => 18,
	"S" => 19,
	"T" => 20,
	"U" => 21,
	"V" => 22,
	"W" => 23,
	"X" => 24,
	"Y" => 25,
	"Z" => 26
}
names = []
while line = gets
	names << line.chomp
end

total = 0
sum = 0
count = 1
names.sort!
name = ""
for i in 0..names.length-1
	sum = 0
	name = names[i].split('')
	for j in 0..name.length-1
		sum += alpha[name[j]]
	end
	sum *= count
	count += 1
	total += sum
end
puts total
