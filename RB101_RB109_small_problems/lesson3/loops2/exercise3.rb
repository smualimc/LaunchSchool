process_the_loop = [true, false].sample

if process_the_loop == true 
  loop 
    puts "The loop was processed"
    break
  end
else
  puts "The loop wasn't processed!"
end
