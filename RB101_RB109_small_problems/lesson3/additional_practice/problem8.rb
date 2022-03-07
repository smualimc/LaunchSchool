# What happens when we modify an array while we are iterating over it? 
# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# From the each iteration the method runs with the original index but
# the shortened array. So after first iteration the index will be 1 and
# the array [2,3,4] p number => p [2,3,4][1] => 3 and after shift the array 
# will be [3,4] with index 2 so it stops because the array length is 2. 