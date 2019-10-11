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

  puts "Pick a number to set the turn 'X' "
  move = gets.chomp
  #if move is valid
  puts move ? "your move is valid" : "your move is not valid"

  puts "Now, your move is displayed on the board"
  puts "--------------------------------------"
  puts "_1_|_2_|_3_"
  puts "_4_|_5_|_6_"
  puts " 7 | 8 | 9 "
  #if turn is valid
  there_turns -= 1 if(true)
end

puts "*************************"
puts "winner is #{player_x} X!!"
puts "*************************"