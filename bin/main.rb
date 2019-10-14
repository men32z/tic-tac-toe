#!/usr/bin/env ruby
require_relative '../lib/game'
require_relative '../lib/user'
puts "Hello welcome to the Tic Tac Toe Game"

puts "What is your name? (player X)"
userx = User.new
userx.name = gets.chomp
puts "What is your name? (player O)"
usery = User.new(gets.chomp)
puts "--------------------------------------"
puts "This our board"

game = Game.new(userx,usery)

puts game.show_board
flag = true
while flag
  flag = false
  while game.total_turns > 0
    puts "#{game.current_turn == 'X' ? userx.name : usery.name} pick a number to set the turn '#{game.current_turn}' "
    position = gets.chomp
    
    puts "--------------------------------------"
    status_game = game.move_game(position.to_i)
    if status_game
      puts status_game
    else
      puts "Next turn"
    end

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