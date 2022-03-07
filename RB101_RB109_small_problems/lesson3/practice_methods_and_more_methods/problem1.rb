# What is the return value of the select method below? Why?

return_ary = [1, 2, 3].select do |num|
  num > 5
  'hi'
end
p return_ary

# Answer: since always the return value of the block is truthie 
# each iteration will select the iterated element
# Then the return array will be [1, 2, 3]