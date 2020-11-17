require_relative "piece"
# 7| -4 -2 -3 -5 -6 -3 -2 -4
# 6| -1 -1 -1 -1 -1 -1 -1 -1
# 5|  0  0  0  0  0  0  0  0
# 4|  0  0  0  0  0  0  0  0
# 3|  0  0  0  0  0  0  0  0
# 2|  0  0  0  0  0  0  0  0
# 1|  1  1  1  1  1  1  1  1 
# 0|  4  2  3  5  6  3  2  4
#   -------------------------
#     0  1  2  3  4  5  6  7


class Board
  def initialize(size=8)
    @grid = Array.new(size) {Array.new(size) {nil} }
    @size=size

    (0...@grid.length).each do |i|
      @grid[0][i] = 'Q'
      @grid[-1][i] = 'Q'
      @grid[1][i] = 'Q'
      @grid[-2][i] = 'Q'

    end
  end

  def[](pos)
    x, y = pos
    @grid
  end

  def[]=(pos)
    x, y = pos
    @grid[x][y] = pos
  end


  def move_piece(start_pos, end_pos)
    @grid[end_pos[0]][end_pos[1]] = 'Q'
    @grid[start_pos[0]][start_pos[1]] = nil

    


    

    if start_pos.empty?
      raise "There is no piece at this position"
    elsif start_pos == end_pos
      raise "The piece cannot move to #{end_pos}"
    end

    if end_pos.nil?
      #piece position = end_pos
      # start_pos = NullPiece.new
    end


  end

  def full?
    @grid.all? do |row|
      row.all? { |piece| piece.present? }
    end
  end

  def mark(pos)
    x, y = pos
    @grid[x][y] = Piece.new
  end

  def in_bounds?(pos)
    pos.all? { |x| x.between?(0, 2) }
  end

  def rows
    @grid
  end
end
