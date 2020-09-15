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
# def decimal_to_binary(number_base_ten)
#   quotient = number_base_ten.divmod(2)[0]
#   modulus = Array(number_base_ten.divmod(2)[1])
#   until quotient == 0
#     modulus.unshift(quotient.divmod(2)[1])
#     quotient = quotient.divmod(2)[0]
#   end
#   return "For #{ number_base_ten }, its binary number is \"#{ modulus.join }\""
# end

# puts decimal_to_binary(255)
# puts decimal_to_binary(456)
# puts decimal_to_binary(9)
