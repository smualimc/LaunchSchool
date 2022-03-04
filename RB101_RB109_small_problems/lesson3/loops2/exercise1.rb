count = 1

loop do
  count.odd? ? (puts "#{count} is odd!") : (puts "#{count} is even!")
  count += 1
  break if count == 6
end

# I found that ternary with puts requiere parenthesis
