# frozen_string_literal: true

class User
  attr_accessor :name
  def initialize(turn, name = nil)
    @turn = turn
    @name = 'Player ' + @turn if name.nil? || name.length < 2
  end
end
