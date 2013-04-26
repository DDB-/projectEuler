$sumTotal = 0;
for($i = 3; $i < 1000; $i += 3){
	$sumTotal += $i;
}

for($i = 5; $i < 1000; $i += 5){
	$sumTotal += $i;
}

for($i = 15; $i < 1000; $i += 15){
	$sumTotal -= $i;
}

print "Sum Total is: $sumTotal\n"
