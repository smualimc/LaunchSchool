# Given the following data structure, and without using the Array#to_h method,
# write some code that will return a hash where the key is the first item in each
# sub array and the value is the second item.

# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2,
# :c=>3, :d=>4}=>"D"}

# Pedac-ACAP
# Since cant't use Array#.to_h will be needed create an empty Hash
# The outer loop will be a #each (array)
# For each array assign its first position to key and the other to value


arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hsh = {}
arr.each {|array| hsh[array[0]] = array[1]}
p hsh


