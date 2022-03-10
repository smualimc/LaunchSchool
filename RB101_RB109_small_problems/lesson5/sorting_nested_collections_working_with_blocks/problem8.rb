# Using the each method, write some code to output all of the vowels from the strings.

# Pedac-ACAP
# I suppose that the strings just have downcased letters
# for the value in |_,value| maps the array (words)
# initialize a new_string
# for each array element appends the letter if it's a vowel
# output

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], 
       fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_,value|
  value.map do |word|
    new_string = ''
    counter = 0
    while counter < word.size
      new_string << word[counter] if ["a", "e", "i", "o", "u"].include?(word[counter])
      counter += 1
    end
    puts new_string
  end
end

# LS Hint: You can use the String#chars method to convert the words to arrays 
# of individual characters.
# Solution using LS Hint

vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end


