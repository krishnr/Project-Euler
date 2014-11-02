def isPrime(i)
  for j in 2..Math.sqrt(i)
    return false if i % j == 0
  end
  return true
end

def printPrimeFactors(n)
  for i in 2..Math.sqrt(n)
    if n % i == 0 
      puts i if isPrime(i)
      puts n/i if isPrime(n/i)
    end
  end
end

bigass_number = 600851475143

printPrimeFactors(bigass_number)