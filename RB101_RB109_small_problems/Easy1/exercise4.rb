# Write a method that counts the number of occurrences of each element in a given array.
# The words in the array are case-sensitive: 'suv' != 'SUV'. 
# Once counted, print each element alongside the number of occurrences.

=begin
Expected output:
car => 4
truck => 3
SUV => 1
motorcycle => 2
=end

def count_occurrences(ary)
  downc_ary = ary.map {|type| type.downcase}
  downc_ary.uniq.each {|type| puts "#{type} => #{downc_ary.count(type)}" }
end 

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'suv', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# Try to solve the problem when words are case insensitive, e.g. "suv" == "SUV".
