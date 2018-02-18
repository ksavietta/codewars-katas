#Given an array of one's and zero's convert the equivalent binary value to an integer.
#Eg: [0, 0, 0, 1] is treated as 0001 which is the binary representation of 1
def binary_array_to_number(arr)
  # arr         = [1,1,1,1]
  # binary digits 8, 4, 2, 1
  highest_exp = arr.length
  arr.map do |binary_num|
    highest_exp -= 1
    binary_num * 2**highest_exp
  end.inject(:+)
end 
