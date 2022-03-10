# Given the following data structure use a combination of methods,
# including either the select or reject method, to return a new array
# identical in structure to the original but containing only the integers
# that are multiples of 3.

# Pedac-ACAP
# According to doc #select returns a new array
# To keep structure the outer loop will be a map.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# With #select
p arr.map { |array| array.select {|number| number % 3 == 0}}

# With #reject
p arr.map { |array| array.reject {|number| number % 3 != 0}}