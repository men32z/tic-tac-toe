class Game
  attr_accessor :board
  
  def initialize
    @turn_x = true
    @board = [nil]*9
  end

  public
  def move_game(position)

    return puts "Position occupied with #{ @board[position-1] }" if @board[position-1] != nil
    return puts "Position out of boundaries. Please numbers from 1 to 9" if !(position >=1 && position <= 9)

    @board[position-1] = (@turn_x) ? 'X': 'O'
    @turn_x = !@turn_x
    #status_game()
  end


  def show_board
    n_s = [1, 4, 7]
    board = ""
    9.times { |x|
      board +=  (n_s.include? x) ? "|" : ""
      board += " #{x+1} "
      board +=  (n_s.include? x) ? "|" : ""
      board +=  (n_s.include? x+2) ? "\n---|---|---\n" : ""
    }
    board
  end
end

test = Game.new

puts test.show_board
puts test.move_game(15)
test.move_game(2)
test.move_game(6)
test.move_game(2)

print test.board

