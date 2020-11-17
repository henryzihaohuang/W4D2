class Piece

  def initialize(color, position)
    @color = color
    @board = board.dup
    @position = position
  end

  def moves

  end

  def present?
    true
  end

  def to_s
    " x "
  end
end

class NullPiece < Piece

  def initialize

  end

  def present?
    false
  end

  def to_s
    "null"
  end
end
