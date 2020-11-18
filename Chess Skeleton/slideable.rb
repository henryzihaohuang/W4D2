# 7| -4 -2 -3 -5 -6 -3 -2 -4
# 6| -1 -1 -1 -1 -1 -1 -1 -1
# 5|  0  0  0  0  0  0  0  0
# 4|  0  0  0  0  0  0  0  0
# 3|  0  0  0  *  0  0  0  0
# 2|  0  0  0  0  0  0  0  0  [3,3] up[3,4]   right[4,3]   left[2,3]     down[3,2]
# 1|  1  1  1  1  1  1  1  1        up[x,y+1] right[x+1,y] left[x-1,y]   down[x,y-1]
# 0|  4  2  3  5  6  3  2  4
#   ------------------------- [3,3] right diag [x+1, y+1] left diag [x-1 y+1] downright [x+1, y-1] downleft [x-1 y-1]
#     0  1  2  3  4  5  6  7

module Slideable
    HORIZONTAL_DIRS = [
        [0,1], # up
        [0,-1], #down
        [1,0], #right
        [-1,0] #left
    ]

    DIAGONAL_DIRS = [
        [1, 1], #right up
        [-1, 1], #left up
        [1, -1], #right down
        [-1, -1] #left down
    ]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        moves_array = []
        move_dirs.each do |dx, dy|
            moves_array += grow_unblocked_moves_in_dir(dx,dy)
        end

        moves_array

    end

    private
    def move_dirs
        raise NotImplementedError # this only executes if
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        moves = []
        pos = self.position

        x, y = pos

        new_pos = [0,0]
        while new_pos.all?{|coordinate| coordinate.between?(0, 7)} || board[new_pos] == nil
            new_pos = [x + dx, y + dy]


            if board[new_pos] == nil 
                moves << new_pos
            elsif board[new_pos] != nil && self.color != Piece.color
                moves << new_pos
            elsif board[new_pos] != nil && self.color == Piece.color
                break
            end
            new_pos = moves.last
            
        end

        moves
    end
    
end