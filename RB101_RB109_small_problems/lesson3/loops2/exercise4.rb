loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "The answer was correct"
    break
  else
    puts "The answer isn't correct, try again"
  end
end
