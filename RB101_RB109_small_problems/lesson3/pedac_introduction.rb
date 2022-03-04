# START
#
#   /* Given a string named `string` */
#
#   SET result = []
#   SET starting_index = 0
#
#   WHILE starting_index <= length of string - 2
#     SET numChars = 2
#     WHILE numChars <= length of string - starting_index
#       SET substring = num_chars characters from string starting at index starting_index
#       append substring to result array
#       SET num_chars = num_chars + 1
#
#     SET starting_index = starting_index + 1
#
#   RETURN result
#
# END

def palindrome_substrings(str)
  result = []
  counter = 0
  substr = []
  while counter <= (str.length-2)
    num_chars = 2
    while num_chars <= (str.length - counter)
      substr << str.slice(counter, num_chars)
      num_chars += 1
    end
    counter += 1
  end
  palindromes = substr.select {|word| word == word.reverse }
  result = palindromes.map {|string| string.upcase}
end

p palindrome_substrings("supercalifragilisticexpialidocious") # ["ili"]
p palindrome_substrings("abcddcbA")   # ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome") # []
p palindrome_substrings("")  
