standard = 3.0/7.0
num = 0.0
diff_store = 1.0
d_count = 700000.0
i = 300000.0
while d_count < 1000000.0
	temp = i/d_count
	while temp < standard
		if (standard - temp) < diff_store
			diff_store = standard - temp
			num = i
		end
		i += 1.0
		temp = i/d_count
	end
	i -= 10.0
	d_count += 1.0
end
puts num
