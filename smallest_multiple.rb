# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# Iterative, find the lcm of of the lcm...etc.
lcm_placeholder = 20
for i in 20.downto(2)
  lcm_placeholder = (i - 1).lcm(lcm_placeholder)
end
puts lcm_placeholder
