# frozen_string_literal: true

class User
  attr_accessor :name
  def initialize(turn)
    @name = nil
    @turn = turn
  end

  def set_name
    puts "What is your name? #{@turn}"
    @name = gets.chomp
    @name = 'Player ' + @turn if @name.length < 2
  end
end
