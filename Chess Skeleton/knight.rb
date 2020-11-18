require_relative "stepable"

class Knight
    def symbol
        self.color == :white ? "♘" : "♞"
    end
end