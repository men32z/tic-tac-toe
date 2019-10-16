# frozen_string_literal: true

require_relative '../lib/game'

RSpec.describe Game do
  let(:game) { Game.new }
  describe '#initialize' do
    it 'returns game object of the class Game' do
      expect(game).to be_an(Game)
    end
  end

  describe '#invalid_position' do
    it 'returns error message when the position is out of boundaries' do
      message_error = 'Position out of boundaries. Please numbers from 1 to 9'
      expect(game.invalid_position(15)).to eq(message_error)
    end

    it 'returns error message when the position is occupied' do
      message_error = 'Position occupied with X'
      game.move_game(1)
      expect(game.invalid_position(1)).to eq(message_error)
    end

    it 'returns false when is a valid position' do
      expect(game.invalid_position(1)).to eq(false)
    end
  end
  describe '#winner' do
    it 'return false if there is no winner' do
      expect(game.move_game(1)).to eq(false)
    end

    it 'return the winner if there is one' do
      game.move_game(1)
      game.move_game(4)
      game.move_game(2)
      game.move_game(5)
      position = 3
      game.instance_eval('@board[position - 1] = \'X\'') # rubocop:disable Style/EvalWithLocation
      game.instance_eval('@turn_x = !@turn_x') # rubocop:disable Style/EvalWithLocation
      game.instance_eval('@total_turns -= 1') # rubocop:disable Style/EvalWithLocation

      expect(game.send(:winner, position - 1)).to eq('X')
    end
  end
end
