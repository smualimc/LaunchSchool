
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# remove people with age 100 and greater.

p ages.select! {|_, age| age < 100}

# LS solution
ages.keep_if { |_, age| age < 100 }

# Difference between keep_if and select!
# Hash#select! Returns nil if no entries were removed.