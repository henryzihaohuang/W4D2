class Piece

  # def initialize
  #   @value = value
  # end

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
