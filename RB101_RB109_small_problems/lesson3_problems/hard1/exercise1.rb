if false
  greeting = "hello world"
end

puts greeting.inspect # => nil

# since false is not  truthie the assignment to "hello world"
# isn't realized but Ruby will assign nil to it
