#!/usr/bin/env ruby
puts "Hello welcome to the Tic Tac Toe Game"
puts "--------------------------------------"
puts "This our board"
puts "_1_|_2_|_3_"
puts "_4_|_5_|_6_"
puts " 7 | 8 | 9 "
puts "Pick a number to set the turn 'X' "
position_x = gets.chomp
game = Game.new
while (statusgame)
    game.move_game(position)
    statusgame = game.status_game
end

puts "Now, your move is displayed on the board"
puts "Pick a number to set the turn 'O' "
position_o = gets.chomp
puts "Now, your move is displayed on the board"
puts "to be continued.."