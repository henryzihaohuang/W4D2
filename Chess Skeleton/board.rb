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
    @grid = Array.new(size) {Array.new(size) {NullPiece.new} }
    @size=size

    (0...@grid.length).each do |i|
      @grid[0][i] = 'Q'
      @grid[-1][i] = 'Q'
      @grid[1][i] = 'Q'
      @grid[-2][i] = 'Q'

      @null_piece = NullPiece.new

    end
  end
require'byebug'

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

  def valid_pos?(coord)
    debugger
    coord.all?{|coordinate| coordinate.between?(0, 7)}
  end

  def add_piece(piece,pos)
    x,y = pos
    @grid[pos] = piece
  end

  def checkmate?(color)
    
  end


end
