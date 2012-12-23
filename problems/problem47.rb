require 'Euler'

file, primes, i = File.open("primes.txt", "r"), [], 0
while line = file.gets
  primes[i] = line.to_i
  i += 1
end
i = 37960
arr1, arr2, arr3, arr4 = [], [], [], []
while true
  arr1 = Euler.prime_factors(i, primes)
  if arr1.length == 4
    arr2 = Euler.prime_factors(i+1, primes)
    if arr2.length == 4 and (arr1-arr2).length == 4
      arr3 = Euler.prime_factors(i+2, primes)
      if arr3.length == 4 and (arr1-arr3).length == 4 and (arr2-arr3).length == 4
        arr4 = Euler.prime_factors(i+3, primes)
        if arr4.length == 4 and (arr1-arr4).length == 4 and (arr2-arr4).length == 4 and (arr3-arr4).length == 4
          print i, " ", i+1, " ", i+2, " ", i+3, "\n"
        end
      end
    end
  end
  i += 1
end
