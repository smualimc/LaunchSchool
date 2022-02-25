# The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. 

a = [1, 4, 8, 11, 15, 19]

# how would you search this Array to find the first element whose value exceeds 8? 

puts a.bsearch {|x| x > 8 } # => 11

## In find-minimum mode, method bsearch returns the first element for which the block returns true.

