#!/usr/bin/env ruby
require_relative 'game'
puts "Hello welcome to the Tic Tac Toe Game"
puts "What is your name? (player X)"
player_x = gets.chomp
puts "What is your name? (player O)"
player_o = gets.chomp
puts "--------------------------------------"
puts "This our board"
game = Game.new
puts game.show_board

 while game.total_turns > 0

  puts "Pick a number to set the turn 'X' "
  position = gets.chomp
  #if move is valid
  status_game = game.move_game(position.to_i)
  if status_game
    puts status_game
  end
  puts "Now, your move is displayed on the board"
  puts "--------------------------------------"
  puts game.show_board
end
