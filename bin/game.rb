class Game
  @board = []
  def initialize
  end

  public
  def show_board
    n_s = [1, 4, 7]
    board = ""
    9.times { |x|
      board +=  (n_s.include? x) ? "|" : ""
      board +=  x < 6 ? "_" : " "
      board += "#{x+1}"
      board +=  x < 6 ? "_" : " "
      board +=  (n_s.include? x) ? "|" : ""
      board +=  (n_s.include? x+2) ? "\n" : ""
    }
    board
  end

  def show_board2
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
puts "  "
puts "  "
puts test.show_board2