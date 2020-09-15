# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

# Binary to Decimal
def binary_to_decimal(binary_array)
  array_length = binary_array.length
  num = 0
  index = 0
  while array_length > 0
    num += binary_array[index].to_i * 2 ** (array_length - 1)
    array_length -= 1
    index += 1
  end 
  return num
end

### Decimal to Binary
# def decimal_to_binary(test_array)
#   test_array.each do |user_number|
#     quotient_i = user_number.divmod(2)[0]
#     modulus_i = Array(user_number.divmod(2)[1])
#     until quotient_i == 0
#       modulus_i.unshift(quotient_i.divmod(2)[1])
#       quotient_i = quotient_i.divmod(2)[0]
#     end
#     puts "For #{ user_number }, its binary number is \"#{ modulus_i.join }\""
#   end
# end

# decimal_to_binary([255, 456, 9])

