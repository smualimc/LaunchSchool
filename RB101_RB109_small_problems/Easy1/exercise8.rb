# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. 
# will never be empty and the numbers will always be positive integers. Your result should also be an integer.

def average(ary)
  avg = ary.sum/ary.length*1.0 # another way to sum ary elements ary.reduce(:+)
  p avg # just to check the float average
  avg
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40