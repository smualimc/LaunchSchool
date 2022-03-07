# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, 
         "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
puts ages.values.sum    

# LS solution 1
total_ages = 0
ages.each { |_,age| total_ages += age }
total_ages # => 6174

# LS solution 2
ages.values.inject(:+) # => 6174



