#!/usr/bin/env ruby
require_relative 'game'
puts "Hello welcome to the Tic Tac Toe Game"

game = Game.new

puts "What is your name? (player X)"
game.user[:x] = gets.chomp
puts "What is your name? (player O)"
game.user[:o] = gets.chomp
puts "--------------------------------------"
puts "This our board"

puts game.show_board
flag = true
while flag
  flag = false
  while game.total_turns > 0
    puts "#{game.user[game.current_turn.downcase.to_sym]} pick a number to set the turn '#{game.current_turn}' "
    position = gets.chomp
    #if move is valid
    puts "--------------------------------------"
    status_game = game.move_game(position.to_i)
    if status_game
      puts status_game
    else
      puts "Next turn"
    end
    #Gem.win_platform? ? (system "cls") : (system "clear")
    puts "--------------------------------------"
    puts game.show_board
  end

  puts ""
  puts "Do you want to play again? (y/n):"
  answer = gets.chomp
  if answer.downcase == 'y'
    flag = true
    game.reset_game
    puts "--------------------------------------"
    puts game.show_board
  else
    puts "Bye Bye!!"
  end
end