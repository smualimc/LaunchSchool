greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings # {:a=>"hi there"}

# To avoid the mutation cab be assigning or using a clone
