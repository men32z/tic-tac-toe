# frozen_string_literal: true

require_relative '../lib/user'

RSpec.describe User do
  describe '#initialize' do
    it 'Create user object without name as a parameter' do
      user = User.new('X')

      expect(user.instance_variable_get(:@turn)).to eq('X')
      expect(user.name).to eq('Player X')
    end

    it 'Create user object with name as a parameter' do
      user = User.new('O', 'Luis Preza')

      expect(user.instance_variable_get(:@turn)).to eq('O')
      expect(user.name).to eq('Luis Preza')
    end
  end
end
