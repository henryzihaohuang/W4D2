require_relative "stepable"

class King < Piece
    include Stepable
    
    def symbol
        self.color == :white ? "♔" : "♚"
    end

    def move_diffs
        move = [
            [0,1],
            [1,0],
            [-1,0],
            [0,-1],
            [1,1],
            [-1,-1],
            [-1, 1],
            [1,-1]
        ]
    end
end

# 7| -4 -2 -3 -5 -6 -3 -2 -4
# 6| -1 -1 -1 -1 -1 -1 -1 -1
# 5|  0  0  0  0  0  0  0  0
# 4|  0  0  0  0  0  0  0  0
# 3|  0  *  *  *  0  0  0  0
# 2|  0  *  0  *  0  0  0  0
# 1|  1  *  *  *  1  1  1  1 
# 0|  4  2  3  5  6  3  2  4
#   -------------------------
#     0  1  2  3  4  5  6  7