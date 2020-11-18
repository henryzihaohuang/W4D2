require_relative "slideable"
class Bishop < Piece

    def symbol
        self.color == :white ? "♗" : "♝"
    end
    def move_dirs
        diagonal_dirs
    end
end
