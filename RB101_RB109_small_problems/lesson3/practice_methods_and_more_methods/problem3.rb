# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# Since puts num returns nil it rejectes all the elements
# Then the return array will be [1,2 3]