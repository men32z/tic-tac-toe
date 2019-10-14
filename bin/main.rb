#!/usr/bin/env ruby
puts "Hello welcome to the Tic Tac Toe Game"
puts "What is your name? (player X)"
player_x = gets.chomp
puts "What is your name? (player O)"
player_o = gets.chomp
puts "--------------------------------------"
puts "This our board"
puts "_1_|_2_|_3_"
puts "_4_|_5_|_6_"
puts " 7 | 8 | 9 "

there_turns = 9

while there_turns > 0

  player_turn = (there_turns % 2).zero? ? 'O' : 'X'
  puts "Pick a valid position to set the turn player #{player_turn}"
  move = gets.chomp
  #if move is valid
  puts move ? "your move is valid" : "your move is not valid"

  #status_game = move_game(move) -> Calling game logic to check if the move is valid
  # if status_game is invalid move(out of boundaries or position occupied)
  #   puts "ERROR your move is invalid"
  #   the loop will start again asking the position and keeping the same turn
  # else
  #  puts "Nex turn"
  #  Change the turn
  # end

  puts "Now, your move is displayed on the board"
  puts "--------------------------------------"
  puts "_1_|_2_|_3_"
  puts "_4_|_5_|_6_"
  puts " 7 | 8 | 9 "
  #if turn is valid

  #the method move_game(move) is going to return if there is a a winner or a draw
  #puts "*************************"
  #puts "winner is #{player_x} X!!"
  #puts "*************************"

  there_turns -= 1 if(true)
end

