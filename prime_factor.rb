

test_number = 600851475143

# def factorize(test_number)
#   return [] if test_number == 1
#   divisor = 2
#   factor_array = []
#   while test_number > 1
#     while (test_number % divisor) == 0
#       factor_array << divisor
#       test_number /= divisor
#     end
#     divisor += 1
#   end
#   return factor_array
# end

# puts factorize(test_number)

def factorize(test_number)
  return [] if test_number == 1
  prime_factor = (2..test_number).find {|divisor| (test_number % divisor) == 0}
  [prime_factor] + factorize(test_number / prime_factor)
end

puts factorize(test_number)
