class Pawn < Piece

    def symbol
        self.color == :white ? "♙" : "♟︎"
    end

    def moves_diffs

    end

    #helper method
    #can go forward 2 & 1, and sometimes diagonal to kill opponent

    


    
    private
    def at_start_row?
        Board.position[1].include?(self) || Board.position[6].include?(self) ? true : false
    end

    
end