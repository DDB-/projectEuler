#!/usr/bin/ruby

def print_decoded(decodedText)
	for i in 0...decodedText.length
		print decodedText[i].chr()
	end
end

cipherText = File.open('cipher1.txt', 'rb') { |file| file.read }
cipherText = cipherText.split(',')
decodedText = Array.new(cipherText.length)

#Code commented out was used to find the key

#for i in 97..122
#	for j in 97..122
#		for k in 97..122
			key = Array[103, 111, 100]
			for l in 0...cipherText.length
				decodedText[l] = key[l%3] ^ cipherText[l].to_i
			end
			print_decoded(decodedText)
			sum = 0
			decodedText.each do |c|
				sum += c
			end
			puts ""
			puts sum
			#print (" ",(i+j+k)," ",i," ",j," ",k)
			#puts ""
#		end
#	end
#end
