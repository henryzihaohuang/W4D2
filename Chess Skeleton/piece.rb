class Piece

  def initialize(color, board, position)
    @color = color
    @board = board
    @position = position
  end

  def to_s
    " x "
  end

  def empty?

  end

  def valid_moves

  end

  def pos=(val)
    @board[val] = self
  end

  def symbol

  end

  private
  def move_into_check?(end_pos)

  end

  
end