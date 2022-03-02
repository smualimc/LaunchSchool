VALID_WORDS = %w(r(ock) p(aper) s(cissors) l(izard) S(pock))
SELECTED_CHOICES = { "r" => "rock", "p" => "paper", "s" => "scissors", \
                     "l" => "lizard", "S" => "spock" }
VALID_CHOICES = VALID_WORDS.map { |word| word[0] }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  game_values = { "p" => ["r", "S"], "s" => ["p", "l"], "r" => ["l", "s"],\
                  "l" => ["S", "p"], "S" => ["s", "r"] }
  game_values.fetch(first).include?(second)
end

def set_winner(user, computer)
  if win?(user, computer)
    "User won"
  elsif win?(computer, user)
    "Computer won"
  else
    "It's a tie!"
  end
end

computer_win = 0
user_win = 0
result = ''
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_WORDS.join(', ')} \
            typing the choice's first letter")
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Not a valid option, please type just the choice's first letter")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("Your choice was #{SELECTED_CHOICES.fetch(choice)} \
          and computer choice was \
          #{SELECTED_CHOICES.fetch(computer_choice)}")

  # Partial result
  result = set_winner(choice, computer_choice)
  case result
  when "User won"
    prompt("User won")
    user_win += 1
  when "Computer won"
    prompt("Computer won")
    computer_win += 1
  else
    prompt("It's a tie!")
  end

  # Some player got 3 wins?
  if user_win == 3 || computer_win == 3
    if user_win == 3
      prompt("Congratulations, you're the winner")
    else
      prompt("Sorry, the computer's the winner")
    end
    break
  end
end

prompt("Thank you for playing. Good bye!")
