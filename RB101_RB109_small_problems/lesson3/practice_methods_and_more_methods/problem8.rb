# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# The Array#take doc says:
# Returns a new Array containing the first n element of self, 
# where n is a non-negative Integer; does not modify self
# So, #take isn't destructive