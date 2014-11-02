def largest_palindrome_product
  largest_palindrome = 0
  palindrome = 0
  for i in 100..999
    for j in 100..999
      palindrome = i*j if isPalindrome(i*j)
      largest_palindrome = palindrome if palindrome > largest_palindrome
    end
  end
  puts largest_palindrome
end

def isPalindrome(n)
  num = n.to_s.split(//).map{|chr| chr.to_i}
  size = num.size - 1
  for i in 0..size
    return false if num[i] != num[size-i]
  end
  return true
end

largest_palindrome_product()