number_a = 0
number_b = 0

loop do
  number_a += rand(2) # returns a number between 0 and 1
  number_b += rand(2)

  next unless number_a == 5 || number_b == 5

  puts "5 was reached"
  break
end
