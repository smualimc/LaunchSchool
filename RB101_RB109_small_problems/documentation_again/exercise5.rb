# What do each of these puts statements output?

## The fetch method returns the array's value at offset index
## With arguments index and default_value, returns the element at offset index if index is in range, 
## otherwise returns default_value:



a = %w(a b c d e)
puts a.fetch(7) #=> IndexError
puts a.fetch(7, 'beats me') #=> beats me
puts a.fetch(7) { |index| index**2 } #=> 49
## With argument index and a block, returns the element at offset index if index is in range 
## (and the block is not called); otherwise calls the block with index and returns its return value: