# An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.
#
# is_isogram("Dermatoglyphics" ) == true
# is_isogram("aba" ) == false
# is_isogram("moOse" ) == false # -- ignore letter case

def is_isogram(string)
  alpha_hash = {}
  string.split('').each do |char|
    lower_char = char.downcase
    alpha_hash[lower_char] = alpha_hash[lower_char].to_i + 1
    return false if alpha_hash[lower_char] > 1
  end
  return true
end
