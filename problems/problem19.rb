sundays = 0
day = 2
feb = 0
for i in 1901..2000
	if i%4 == 0
		feb = 29
	else
		feb = 28
	end
	
	for j in 1..31 #January
		if day == 7
			day = 1
		else
			day += 1
		end
	end
	sundays += 1 if day == 6
	
	for j in 1..feb #February
		if day == 7
			day = 1
		else
			day += 1
		end
	end
	sundays += 1 if day == 6
	
	for j in 1..31 #March
		if day == 7
			day = 1
		else
			day += 1
		end
	end
	sundays += 1 if day == 6
	
	for j in 1..30 #April
		if day == 7
			day = 1
		else
			day += 1
		end
	end
	sundays += 1 if day == 6
	
	for j in 1..31 #May
		if day == 7
			day = 1
		else
			day += 1
		end
	end
	sundays += 1 if day == 6
	
	for j in 1..30 #June
		if day == 7
			day = 1
		else
			day += 1
		end
	end
	sundays += 1 if day == 6
	
	for j in 1..31 #July
		if day == 7
			day = 1
		else
			day += 1
		end
	end
	sundays += 1 if day == 6
	
	for j in 1..31 # August
		if day == 7
			day = 1
		else
			day += 1
		end
	end
	sundays += 1 if day == 6
	
	for j in 1..30 #Sept
		if day == 7
			day = 1
		else
			day += 1
		end
	end
	sundays += 1 if day == 6 
	
	for j in 1..31 #October
		if day == 7
			day = 1
		else
			day += 1
		end
	end
	sundays += 1 if day == 6
	
	for j in 1..30 #November
		if day == 7
			day = 1
		else
			day += 1
		end
	end
	sundays += 1 if day == 6
	
	for j in 1..31 #December
		if day == 7
			day = 1
		else
			day += 1
		end
	end
	sundays += 1 if day == 6
end

print sundays
