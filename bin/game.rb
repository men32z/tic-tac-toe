class Game
  attr_accessor :user
  attr_reader :total_turns

  def initialize
    reset_game
  end

  private

  def winner(last_p)
    current_value = @turn_x ? "O" : "X"
    winner_cases = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    winner_cases.each do |x|
      if x.include? last_p
        return current_value if current_value == @board[x[0]] && current_value == @board[x[1]] && current_value == @board[x[2]]
      end
    end
    false
  end

  public
  def move_game(position)

    return "Position occupied with #{ @board[position - 1] }" if !@board[position - 1].nil?
    return "Position out of boundaries. Please numbers from 1 to 9" if !(position >=1 && position <= 9)

    @board[position-1] = (@turn_x) ? 'X': 'O'
    @turn_x = !@turn_x
    @total_turns -= 1
    winner = winner(position-1)
    if !winner && total_turns < 1
      return "It's a draw"
    elsif !winner
      return winner
    else
      @total_turns = 0
      return "The champion is #{@user[winner.downcase.to_sym]} '#{winner}'!!"
    end
  end

  def current_turn
    @turn_x ? 'X': 'O'
  end

  def show_board
    n_s = [1, 4, 7]
    board = ""
    9.times { |x|
      board +=  (n_s.include? x) ? "|" : ""
      if @total_turns == 9
        board +=  " #{x+1} "
      else
        board +=  " #{@board[x] ? @board[x] : ' '} "
      end
      board +=  (n_s.include? x) ? "|" : ""
      board +=  (n_s.include? x+2) ? "\n---|---|---\n" : ""
    }
    board
  end

  def reset_game
    @turn_x = true
    @board = [nil]*9
    @total_turns = 9
    if @user.nil?
      @user = {
        x: '',
        o: ''
      }
    end
  end
end
