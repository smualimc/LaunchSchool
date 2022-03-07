# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# It iterates over the array and creates a hash object
# For each string (value) the key will be its first character
# and the hash value the array element
# Then it returns {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}