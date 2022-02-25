def reverse_words(str)
  words = []
  str.split do |substring|
    substring.reverse! if substring.length > 4
    words << substring
  end 
  words.join(" ") 
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS