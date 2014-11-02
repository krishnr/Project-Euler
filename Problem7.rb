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

def nth_prime(sieve, n)
  puts sieve[n-1]
end

sieve = []
num = 10000

while sieve.size < 10001
  sieve = sieve_of_eratosthenes_upto(num)
  num *= 10
end

nth_prime(sieve, 10001)
