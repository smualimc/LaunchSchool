# Print out
# (Name) is a (age)-year-old (male or female).

# Pedac-ACAP
# Since all member must be printed out an each method will be used

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each {|key,value| puts "#{key} is a #{value["age"]}-year-old #{value["gender"]}."}