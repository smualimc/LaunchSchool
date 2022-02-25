s = 'abc'
puts s.public_methods.inspect
puts "\n"
# public_methods(all=true) → array 
# public_methods: Returns the list of public methods accessible to obj. 
# If the all parameter is set to false, only those methods in the receiver will be listed.

# inspect: Returns a string containing a human-readable representation of obj
# with inspect, it shows the methods in an array, without it just print the methods

puts s.public_methods(all=false).inspect # list just methods in the receiver
