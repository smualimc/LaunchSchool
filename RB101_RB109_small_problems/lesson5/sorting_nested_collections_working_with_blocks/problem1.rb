# How would you order this array of number strings by descending numeric value?

# Pedac-ACAP
# Use the #sort_by method and inside the block generate a key using #to_i method
# then reverse the sorted array




# p arr.sort_by {|str| str.to_i}.reverse MY SOLUTION

# LS solution 
#arr = ['10', '11', '9', '7', '8']
#p arr.sort do |a,b|
#  b.to_i <=> a.to_i
# end # outputs ["10", "11", "7", "8", "9"]

arr = ['10', '11', '9', '7', '8']
sorted_arr = arr.sort do |a,b| 
  b.to_i <=> a.to_i 
end

p sorted_arr





# => ["11", "10", "9", "8", "7"]