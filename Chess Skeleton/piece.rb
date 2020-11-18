
class Piece 

  def initialize(color, board, position)
    @color = color
    @board = board
    @position = position
  end

  def to_s
    symbol.to_s
  end

  def empty?
    @position == nil
  end

  def valid_moves
    moves
  end

  def pos=(val)
    @board[val] = self
  end

  def symbol
    raise NotImplementedError
  end

  private
  def move_into_check?(end_pos)
    #check if subsequent move ends in game_over

    if @board[position].is_a?(King)
      print "Check!"
      return true
    end

  end

  
end