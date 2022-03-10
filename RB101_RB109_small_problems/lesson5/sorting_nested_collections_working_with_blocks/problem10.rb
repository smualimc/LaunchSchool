# Given the following data structure and without modifying the original array,
# use the map method to return a new array identical in structure to the original
# but where the value of each integer is incremented by 1.



# Pedac-ACAP
# The array contains three elements (hashes)
# All values in hashes are integers
# An auxiliary var will be used to contain the modified array
# Each map iteration process a hash that has to be iterated with map
# Chains the iteration with #.to_h

# My solution
new_ary = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map {|hsh|
          hsh.map {|key,value| [key, value + 1]}.to_h }
p new_ary

# LS solution
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
  incremented_hash = {}
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end
# => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]
                                                