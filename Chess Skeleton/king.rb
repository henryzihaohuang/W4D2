require_relative "stepable"

class King < Piece
    def symbol
        self.color == :white ? "♔" : "♚"
    end
end