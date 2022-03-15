=begin
Tic Tac Toe is a 2 player game played on a 3x3 board. Each player takes
 a turn and marks a square on the board. First player to reach 3 squares
 in a row, including diagonals, wins. If all 9 squares are marked and no
 player has 3 squares in a row, then the game is a tie.

SEQUENCE OUTLINE
1. Display the initial empty 3x3 board.
2. Ask the user to mark a square.
3. Computer marks a square.
4. Display the updated board state.
5. If winner, display winner.
6. If board is full, display tie.
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Good bye!
=end

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNER_SQUARES = [\
  [1, 2, 3], [4, 5, 6], [7, 8, 9],  # horizontals
  [1, 4, 7], [2, 5, 8], [3, 6, 9],  # verticals
  [1, 5, 9], [3, 5, 7] # diagonals
]

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER} and the computer is #{COMPUTER_MARKER}"
  puts
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(ary:, separator: ', ', last: ' or ')
  str = ary[0].to_s
  idx = 1
  while idx < ary.size
    str << if idx == (ary.size - 1)
             last + ary[idx].to_s
           else
             separator + ary[idx].to_s
           end
    idx += 1
  end
  str
end

def user_moves!(brd)
  prompt("Choose an available square from (#{joinor(ary: empty_squares(brd))})")
  square = nil
  loop do
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt('Bad option, choose a valid available square')
  end
  brd[square] = PLAYER_MARKER
end

def computer_moves!(brd)
  WINNER_SQUARES.each do |array|
    if brd.values_at(*array).count(COMPUTER_MARKER) == 2 && brd.values_at(*array).count(INITIAL_MARKER) == 1
      idx = brd.values_at(*array).index(INITIAL_MARKER) 
      brd[array[idx]] = COMPUTER_MARKER
      return
    end
  end
  WINNER_SQUARES.each do |array|
    if brd.values_at(*array).count(PLAYER_MARKER) == 2 && brd.values_at(*array).count(INITIAL_MARKER) == 1
      idx = brd.values_at(*array).index(INITIAL_MARKER) 
      brd[array[idx]] = COMPUTER_MARKER
      return
    end
  end
  if brd[5] == INITIAL_MARKER
    brd[5] = COMPUTER_MARKER
    return
  end
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def tie?(brd)
  empty_squares(brd).empty?
end

def detect_winner(brd)
  WINNER_SQUARES.each do |array|
    if brd.values_at(*array).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*array).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def winner?(brd)
  !!detect_winner(brd)
end

loop do # A new cycle of 5 games
  wins_player = 0
  wins_computer = 0


  start_player = ''
  start_player = [ 'p', 'c' ].sample
=begin
  loop do 
    prompt("Choose who starts: P for you, C for computer")
    start_player = gets.chomp
    start_player.downcase!
    if start_player == 'p' || start_player == 'c'
      break
    else
      prompt("Bad option, enter it again!")
    end
  end
=end

  loop do # A new game
    board = initialize_board

    loop do # Until there's a winner or tie
      display_board(board)

      if start_player == 'c'
        computer_moves!(board)
        display_board(board)
        break if winner?(board)
        
        user_moves!(board) if board.values.any?(INITIAL_MARKER)
        break if winner?(board)
      else
        user_moves!(board)
        break if winner?(board)

        computer_moves!(board)
        break if winner?(board)
      end

      break if tie?(board)
    end

    display_board(board)

    if winner?(board)
      if detect_winner(board) == 'Player'
        wins_player += 1
        if wins_player == 5
          prompt("You won 5 - #{wins_computer}")
          break
        else
          prompt("You won, partial result, you: #{wins_player} - computer: #{wins_computer}, press any key to continue")
          gets
        end
      else
        wins_computer += 1
        if wins_computer == 5
          prompt("Computer won 5 - #{wins_player}")
          break
        else
          prompt("Computer won, partial result, Computer: #{wins_computer} - you: #{wins_player}, press any key to continue")
          gets
        end
      end
    else
      prompt("It's a tie! partial result: you: #{wins_player} - computer: #{wins_computer}, press any key to continue ")
      gets
    end
  end

  prompt("Enter yes to continue playing")
  break unless gets.chomp.downcase.start_with?('y')
end

prompt("Thank you for playing Tic Tac Toe!")
