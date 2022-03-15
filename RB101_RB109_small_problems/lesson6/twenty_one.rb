require 'pry'
REVERSE = "\uF0A0"
spade = "\u2660"
club = "\u2663"
heart = "\u2665"
diamond = "\u2666"
suites = %W(#{spade} #{club} #{heart} #{diamond})
values = %w(2 3 4 5 6 7 8 9 10 J Q K A)
weight = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 1]
# rubocop:disable Layout/LineLength
cards = values.product(suites).map { |sub_array| "#{sub_array[0]}#{sub_array[1]}" }
# rubocop:enable Layout/LineLength
DECK = {}
cards.each_with_index do |card, _|
  if card.size != 3
    index = values.index(card[0]).to_i
    DECK[card] = weight[index]
  else
    DECK[card] = 10
  end
end
current_deck = {}
current_deck = DECK.each { |k, v| current_deck[k] = v }

def prompt(message)
  puts "=> #{message}"
end

def update_deck(deck, card)
  deck.delete(card)
end

def pick_card(deck)
  card = {}
  key = deck.keys.sample
  card[key] = deck[key]
  update_deck(deck, key)
  card
end

def deal(deck, player, dealer)
  player.merge!(pick_card(deck))
  dealer.merge!(pick_card(deck))
  player.merge!(pick_card(deck))
  dealer.merge!(pick_card(deck))
end

def initial_dealer_cards(hand)
  puts
  puts "#{hand.keys[0]}  #{REVERSE}"
end

def show_cards(hand)
  puts
  puts hand.keys.join(' ')
end

def aces?(hand)
  hand.keys.map { |card| card[0] }.any?('A')
end

def compute(hand)
  total = hand.values.sum
  if aces?(hand)
    if total + 10 > 21
      total
    else
      total + 10
    end
  else
    total
  end
end

def set_winner(player, dealer)
  player_result = compute(player)
  dealer_result = compute(dealer)
  player_result += 10 if player_result + 10 <= 21
  dealer_result += 10 if dealer_result + 10 <= 21
  if player_result > dealer_result
    'Player won'
  else
    'Dealer won'
  end
end

def another_card(deck, hand)
  hand.merge!(pick_card(deck))
end

def player_turn?(deck, hand)
  loop do # until stay or bust
    total = compute(hand)
    prompt("Your total is: #{total}.")
    return false if total > 21
    prompt("Enter h to hit or s to stay")
    answer = gets.chomp
    if answer.downcase.start_with?('h') || answer.downcase.start_with?('s')
      return true if answer == 's'
      another_card(deck, hand)
      show_cards(hand)
    else
      prompt("Bad option, please retry")
      next
    end
  end
end

def dealer_turn?(deck, hand)
  loop do
    show_cards(hand)
    total = compute(hand)
    prompt("Dealer total is: #{total}.")
    return false if total > 21
    return true if total >=  17
    another_card(deck, hand)
  end
end

# Main process
player_cards = {}
dealer_cards = {}
deal(current_deck, player_cards, dealer_cards)
initial_dealer_cards(dealer_cards) # just one visible card
show_cards(player_cards)
player_keeps = player_turn?(current_deck, player_cards)
if !player_keeps
  prompt("You bust, dealer won")
  exit!
end
dealer_keeps = dealer_turn?(current_deck, dealer_cards)
if !dealer_keeps
  prompt("Dealer bust, you won")
  exit!
end
p set_winner(player_cards, dealer_cards)
