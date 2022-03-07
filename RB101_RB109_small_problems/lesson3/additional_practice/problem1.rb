flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the 
# values are the positions in the array.

hsh = {}
flintstones.each_with_index {|item, index| hsh[item] = index}
p hsh