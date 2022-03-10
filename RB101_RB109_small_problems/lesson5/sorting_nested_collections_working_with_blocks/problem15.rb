# Given this data structure write some code to return an array which contains
# only the hashes where all the integers are even.

# Pedac
# The given structure is an array that contains 3 hashes elements
# It's neccessary to select the array elements 
# In each iteration all values must be even for be selected
# Hash#values returns an array with all values of a hash
# All of the elements of the values array must be even

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# My solution
def all_values_even?(ary)
  flag = true
  ary.each { |value| flag = false unless value.even? }
  flag
end

array = arr.select do |hash|
  all_values_even?(hash.values.flatten) 
end

p array

# LS Solution
array = arr.select do |hash|
  hash.all? do |_,value|
    value.all? do |num|
      num.even?
    end
  end
end

p array
