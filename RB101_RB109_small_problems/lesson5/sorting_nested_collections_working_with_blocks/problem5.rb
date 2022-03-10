# figure out the total age of just the male members of the family.

# Pedac-ACAP
# Select the elements with gender == "male" => a new_hash with selected genders
# Iterates new_hash accumulating age 

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# My solution
new_hash = munsters.select {|_, hsh_value| hsh_value["gender"] == "male"}
total_age = 0
new_hash.each {|_,hsh| total_age += hsh["age"]}
p total_age

# LS Solution
total_age = 0
munsters.each {|_,hsh| total_age += hsh["age"] if hsh["gender"] == 'male'}
p total_age
