# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

def find_largest_prime(n)
  while true
    smallest_prime = find_smallest_prime(n)
    if smallest_prime < n
      n /= smallest_prime
    else
      return n
    end
  end
end

def find_smallest_prime(n)
  for i in (2..Math.sqrt(n) + 1)
    if n % i == 0
      return i
    end
  end
  return n
end
