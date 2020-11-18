require_relative 'board'

class Pawn < Piece

    def symbol
        self.color == :white ? "♙" : "♟︎"
    end

    def moves # filters through out
        moves_array = []
        forward_dir
        moves_array
    end

    #helper method
    #can go forward 2 & 1, and sometimes diagonal to kill opponent

    private
    def at_start_row?
        Board.position[1].include?(self) || Board.position[6].include?(self) ? true : false
    end

    def forward_dir #return 1 or -1
        # possible = [] 
        
        # possible.concat(forward_steps) 
        # possible.concat(side_attacks) 
    end

    def forward_steps #adding up
        if at_start_row? 
            [0,3]
        else
            [0,1]
        end
    end

    def side_attacks #adding the sides to current pos

        [[1,1],[-1,1]]
    end

end