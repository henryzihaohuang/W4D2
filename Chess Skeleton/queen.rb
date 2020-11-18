require_relative "slideable"
class Queen < Piece
    def symbol
        self.color == :white ? "♕" : "♛"
    end

    def move_dirs
        horizontal_dirs + diagonal_dirs
    end
end