# Pedac-ACAP
# Iterates over munsters hash
# over each iteration assign value to age_group depending on the age
# returns the modified hash

def modify_hsh(hsh)
  hsh.each do |_,value|
    age_group = ''
    if value["age"] < 18
      age_group = "kid"
    elsif value["age"] < 65
      age_group = "adult"
    else
      age_group = "senior"
    end
    value["age_group"] = age_group
  end
  hsh
end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

p modify_hsh(munsters)

# LS solution : using CASE and ranges

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

