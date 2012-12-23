require 'Euler'

x = 100000
while 6*x < 1000000
	if Euler.permutation?(x,2*x) == 1
		if Euler.permutation?(x,3*x) == 1
			if Euler.permutation?(x,4*x) == 1
				if Euler.permutation?(x,5*x) == 1
					if Euler.permutation?(x,6*x) == 1
						print x
					end
				end
			end
		end
	end
	x += 1
end
