#!/usr/bin/ruby

require 'Euler'

start = Time.now

primes = Euler.genPrimesTo(1000)

primes.each do |p|
	puts p
end

fractions = 0
for i in 1..1000000
	for j in i+1..1000000
		fractions += 1
	end
end
fin = Time.now
puts "#{fin - start} seconds"
