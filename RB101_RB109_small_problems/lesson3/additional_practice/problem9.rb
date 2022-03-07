def titleize(str)
  # Splits str into words
  # Iterate words array using capitalize built-in method
  # Joins words into string and return

  str.split(" ").each {|word| word.capitalize!}.join(" ")
end

p titleize("the flintstones rock")

# LS solution: In it isn't neccesary use capitalize! coz
# map generates a new string (each doesn't). Besides didn't
# use the (" ") argument for split because it's the default.

str = "the flintstones rock"
p str.split.map { |word| word.capitalize }.join(' ')