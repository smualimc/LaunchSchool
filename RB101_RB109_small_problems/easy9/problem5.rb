def uppercase?(str)
  str.chars.intersection(("a".."z").to_a) == [] ? true : false
end

# LS solution
# str == str.upcase

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true