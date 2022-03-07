# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# If we look for Hash#shift in docs it says:
# Removes the first hash entry (see Entry Order); 
# returns a 2-element Array containing the removed key and value.
# Entry Order says: A Hash object presents its entries in the order 
# of their creation. 
# So, hash.shift deletes the pair a: 'ant' from hash 
# and return the array [a:, 'ant']