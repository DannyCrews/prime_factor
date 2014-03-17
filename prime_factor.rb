

test_number = 600851475143

# This is the first version I came up with

def factorize(test_number)
  return [] if test_number == 1
  divisor = 2
  factor_array = []
  while test_number > 1
    while (test_number % divisor) == 0
      factor_array << divisor
      test_number /= divisor
    end
    divisor += 1
  end
  return factor_array.max
end
puts factorize(test_number)

#-----------------------------------------------------------------------------

# Did some research and found a tail recursive algorithm

def factorize(test_number)
  return [] if test_number == 1
  prime_factor = (2..test_number).find {|divisor| test_number % divisor == 0}
  [prime_factor] + factorize(test_number / prime_factor)
end
puts factorize(test_number).max

#-----------------------------------------------------------------------------

# Ruby has a prime library that can be called to accomplish

require 'prime'
puts test_number.prime_division.max[0]