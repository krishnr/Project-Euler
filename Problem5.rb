# If a num is divisible by 20, it is also divisible by 2, 4, 5, 10
# Thus, the divisors set can be reduced to just 11..20

twenty_factorial = 2432902008176640000 # This is the largest possible answer

for i in 21..twenty_factorial
  divisible = true
  for j in 11..20
    divisible = false unless i % j == 0
    break unless divisible
  end

  if divisible
    puts i
    exit
  end
end