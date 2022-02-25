# Use the ruby documentation to determine what this code will print.

# I found it under: calling_methods/Default Positional Arguments
# The default parameters must be contiguous and will be filled from left to side
# First of all the non default positions are filled, in this case a=4 d=6
# Last parameter is (from left to right) b=5 then c must be = 3 (the default)


def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6) #=> [4,5,3,6]