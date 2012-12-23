module Euler
	def Euler.bouncy?(num)
		return false if num.to_s.length <= 2
		flag = 0
		test = 0
		num = num.to_s.split('')
		for i in 0..num.length-2
			test = num[i+1].to_i - num[i].to_i
			flag = 1 if flag == 0 and test > 0
			flag = -1 if flag == 0 and test < 0
			return true if flag == 1 and test < 0
			return true if flag == -1 and test > 0
		end
		return false
	end

	def Euler.prime?(num)
		return false if num < 1
		return false if num == 1
		return true if num == 2 || num == 3
		return false if num%2 == 0 || num%3 == 0
		i = 5
		while i <= Math.sqrt(num).floor + 1
			return false if num % i == 0
			return false if num % (i + 2) == 0
			i += 6
		end
		return true
	end
	
	def Euler.genPrimesTo(num)
		primes = Array.new()
		bitmap = Array.new(num)
		bitmap[0], bitmap[1] = 1, 1
		
		i = 2
		while i < (Math.sqrt(num) + 1)
			j = i + i
			while j <= num
				bitmap[j] = 1
				j += i
			end
			i += 1
			while(bitmap[i] == 1)
				i += 1
			end
		end
		
		for i in 2..bitmap.length
			if(bitmap[i] == nil and i <= num)
				primes.insert(primes.length, i)
			end
		end
		return primes
	end
	
	def Euler.prod_dig(num)
		num = num.to_s.split('')
		sum = 0
		k = 0
		for i in 0..num.length-1
			k = num[i].to_i
			sum += (k*k)
		end
		return sum
	end
	
	def Euler.dig_sum(num)
		num = num.to_s.split('')
		sum = 0
		for i in 0..num.length-1
			sum += num[i].to_i
		end
		return sum
	end
	
	def Euler.dig_sq_sum(num)
		num = num.to_s.split('')
		sum = 0
		for i in 0..num.length-1
			sum += (num[i].to_i)**2
		end
		return sum
	end
	
	def Euler.pow(num, pow)
		prod = num
			return 1 if pow == 0
			for i in 1...pow 
				prod *= num
			end
		return prod
	end
	
	def Euler.palindrome?(num)
		num = num.to_s
		len = num.length
		num = num.split('')
		check = len/2 - 1
		for i in 0..check
			return false if Integer(num[i]) != Integer(num[-(i+1)])
		end
		return true
	end
	
	def Euler.reverse(num)
		num = num.to_s.split('')
		len = (num.length)*0.5
		for i in 0...len
			temp = num[i]
			num[i] = num[-(i+1)]
			num[-(i+1)] = temp
		end
		num = num.to_s
		num = num.to_i
		return num
	end
	
	def Euler.factorial(num)
		return 1 if num == 0
		result = 1
		while num > 0
			result *= num 
			num -= 1
		end
		return result
	end
	
	def Euler.divisor_sumf(num)
		sum = 0.0
		i = 1.0
		while i <= num/2
			sum += i if num%i == 0
			i += 1.0
		end
		sum += num
		return sum
	end
	
	def Euler.gcd(num1, num2)
		return 0 if num1 < 0 or num2 < 0
		return num1 if num1 == num2
		if num1 > num2
			store1 = num1
			store2 = num2
			temp = 0
			while store1%store2 != 0
				temp = store2
				store2 = store1%store2
				store1 = temp
			end
			return store2
		else
			store1 = num2
			store2 = num1
			temp = 0
			while store1%store2 != 0
					temp = store2
					store2 = store1%store2
					store1 = temp
			end
			return store2
		end
	end
	
	def Euler.phi(num)
		arr = []
		place = 0
		if num%2 == 0
			arr[place] = 2
			place += 1
		end
		if num%3 == 0
			arr[place] = 3
			place += 1
		end
		i = 5
		while i < num
			if Euler.prime?(i)
				if num%i == 0
					arr[place] = i
					place += 1
				end
			end
			i += 2
			if Euler.prime?(i)
				if num%i == 0
					arr[place] = i
					place += 1
				end
			end
			i += 4
		end
		prod = 1.0 - 1.0/arr[0]
		for i in 1..(arr.length - 1)
			prod *= (1.0 - 1.0/arr[i])
		end
		return (num*prod).to_i
	end
	
	def Euler.phi2(num)
		count = 0
		for i in 1..num-1
			count += 1 if Euler.gcd(num, i) == 1
		end
		return count
	end		
	
	def Euler.permutation?(x,y)
		return x.to_s.split('').sort == (y.to_s.split('')).sort
	end
	
	def Euler.sum_divisors(num)
		sum = 1
		for i in 2..Math.sqrt(num)
			if num%i == 0
				sum += i
				sum += (num/i) if (num/i) != i
			end
		end
		return sum
	end
	
	def Euler.abundant(num)
		return Euler.sum_divisors(num) > num
	end
	
	def Euler.pandigital?(num)
		return num.to_s.split('').sort.to_s == "1234567"
	end
	
	 def Euler.modLen(num)
     mods, i = [], 0
     mods << (num % 10**i)
     i += 1
     while true
       thi_mod = ((10**i) % num)
       return (i - mods.index(thi_mod)) if mods.include?(thi_mod)
       mods << thi_mod
       i += 1
       end
	end
		
	def Euler.prime_factors(num, primes)
    factors, i, str = [], 0, 0
     if Euler.prime?(num)
       factors << num
       return factors
     end
     while true
       if num%primes[i] == 0
         str = primes[i]
         num = num/str
         while num%primes[i] == 0
         		num = num/primes[i]
          	str = str*primes[i]
         end
         factors << str
       end
       return factors if num == 1
       if Euler.prime?(num)
         factors << num
         return factors
       end
       i += 1
     end
   end
end
