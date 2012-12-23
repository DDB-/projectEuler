require 'Euler'
num = 0
arr = []
k = 1
for i in 2..100
	for j in 2..100
		k = 1
		num = Euler.pow(i, j)
		for l in 0..arr.length-1
			k = 2 if num == arr[l]
		end
		arr << num if k == 1
	end
end
print arr.length
