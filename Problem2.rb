sum = 0
i = 1
j = 2
limit = 4000000

while j < limit

  sum += i if i % 2 == 0
  sum += j if j % 2 == 0

  i += j
  j += i
end

puts sum