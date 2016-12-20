# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome_check(num)
  num_string = num.to_s
  half_length = num_string.length / 2
  for i in (0..half_length) do
    return false unless num_string[i] == num_string[-1 * (i + 1)]
  end
  return true
end

def find_highest_palindrome
  highest_palindrome = 0
  for i in 100..999 do
    for j in 100..999 do
      sum = i * j
      if palindrome_check(sum) && (sum > highest_palindrome)
        highest_palindrome = sum
      end
    end
  end
  highest_palindrome
end

puts find_highest_palindrome
