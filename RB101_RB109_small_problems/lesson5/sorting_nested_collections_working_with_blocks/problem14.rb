# Given this data structure write some code to return an array
# containing the colors of the fruits and the sizes of the vegetables.
# The sizes should be uppercase and the colors should be capitalized.

# Output => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# Pedac-ACAP
# With Hash.map iterates over the hash pairs
# For each pair determine if it's a fruit or vegetable
# If fruit capitalize each sub-array element
# If vegetable upcase the String

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

array = hsh.map do |_,value| 
  if value[:type] == 'fruit'
    value[:colors].map {|color| color.capitalize} 
  else
    value[:size].upcase
  end
end

p array



    




