# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# When #count has a block, it counts the element only
# when the block is truthie for the element
# In this case 2 elements
# We can find out it in Array#count