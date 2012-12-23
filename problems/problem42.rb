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
tris = []
for i in 1..101
	tris[i-1] = 0.5*i*(i+1)
end

count = 0
num = 0
while line = gets
	num = 0
	line = line.split('')
	for i in 0..line.length-2
		num += alpha[line[i]]
	end
	i = 0
	for i in 0..100
		if num == tris[i]
			count += 1
		end
		i += 1
	end
end
puts count
