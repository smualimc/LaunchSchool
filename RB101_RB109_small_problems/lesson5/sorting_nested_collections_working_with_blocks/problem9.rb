# Given this data structure, return a new array of the same structure 
# but with the sub arrays being ordered (alphabetically or numerically 
# as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# Pedac-ACAP
# Since a new array is needed the #map method will be used
# In order to get the descending order, in the #sort block 
#  the b <=> a will be set

desc_array = arr.map {|ary| ary.sort {|a,b| b <=> a}}
p desc_array
