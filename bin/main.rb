#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/game'
require_relative '../lib/user'

def asking_names(turn)
  puts "What is your name (Turn #{turn})?"
  name = gets.chomp
  name
end
puts 'Hello welcome to the Tic Tac Toe Game'
userx = User.new('X', asking_names('X'))
usery = User.new('O', asking_names('O'))
puts '--------------------------------------'
puts 'This our board'

game = Game.new(userx, usery)

puts game.show_board
flag = true
while flag
  flag = false
  while game.total_turns.positive?
    puts "#{game.current_turn == 'X' ? userx.name : usery.name} pick a number to set the turn '#{game.current_turn}' "
    position = gets.chomp
    puts '--------------------------------------'

    invalid_p = game.invalid_position(position.to_i)
    status_game = invalid_p || game.move_game(position.to_i)

    if status_game
      puts status_game
    else
      puts 'Next turn'
    end

    puts '--------------------------------------'
    puts game.show_board
  end

  puts ''
  puts 'Do you want to play again? (y/n):'
  answer = gets.chomp
  if answer.downcase == 'y'
    flag = true
    game.reset_game
    puts '--------------------------------------'
    puts game.show_board
  else
    puts 'Bye Bye!!'
  end
end
