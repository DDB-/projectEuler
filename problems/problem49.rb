require 'Euler'

i = 1489
while i <= 3339
	j,k = i+3330,i+6660
	if Euler.prime?(i) and Euler.prime?(j) and Euler.prime?(k)
		if Euler.permutation?(i,j) and Euler.permutation?(j,k)
				print i, " ", j, " ", k, "\n"
		end
	end
	i += 2
end


