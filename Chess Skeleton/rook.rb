require_relative "slideable"
class Rook< Piece
    include Slideable
    def symbol
        self.color == :white ? "♖" : "♜"
    end
    def move_dirs
        horizontal_dirs
    end
end