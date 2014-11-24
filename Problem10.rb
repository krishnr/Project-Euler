num = 2000000

def sieve_of_eratosthenes_upto(n)
  s = (0..n).to_a
  s[0] = s[1] = nil
  s.each do |p|
    next unless p
    break if p * p > n
    (p*p).step(n, p) { |m| s[m] = nil }
  end
  return s.compact
end

sieve = sieve_of_eratosthenes_upto(num)

sum = 0

sieve.each do |prime|
  sum += prime
end

puts sum