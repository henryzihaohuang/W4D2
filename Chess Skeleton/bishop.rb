require_relative "slideable"
class Bishop < Piece
    include Slideable

    def symbol
        self.color == :white ? "♗" : "♝"
    end
    
    def move_dirs
        diagonal_dirs
    end
end
