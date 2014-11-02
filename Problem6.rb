sum_to_hundred = 50*101 # using sum of a series formula (S = n/2 * (n+1))

def add_squares
  sum = 0
  for i in 1..100
    sum += i*i
  end
  return sum
end

sum_of_squares = add_squares()
puts sum_to_hundred*sum_to_hundred - sum_of_squares