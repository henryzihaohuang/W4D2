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
    HORIZONTAL_DIRS:[
        [x,y+1] # up
        [x,y-1] #down
        [x+1,y] #right
        [x-1,y] #left
    ]

    DIAGONAL_DIRS:[
        [x+1, y+1] #right up
        [x-1 y+1] #left up
        [x+1, y-1] #right down
        [x-1 y-1] #left down
    ]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        if Piece.symbol == "♗"
            HORIZONTAL_DIRS
        elsif Piece.symbol == "♖"
            DIAGONAL_DIRS
        elsif Piece.symbol == "♕"
            HORIZONTAL_DIRS + DIAGONAL_DIRS
        end

    end

    private
    def move_dirs
        raise NotImplementedError # this only executes if
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        
        
        position = Piece.position #[0,0]
        x, y = position
        i = 0
        
        while i < 8 # within board
            #until theres another piece 
               # check piece color
               #if color is the same we stop
               
               #if the color is not the same we consider the position too.




            i+=1
        end


        HORIZONTAL_DIRS



        position =  Piece.position 
        i = 0
        x, y = position

        while i < 8
            new_up_diag = board[x+i][y+i] unless new_up_diag == position
            DIAGONAL_DIRS << new_up_diag

            new_down_diag = board[x-i][y-i] unless new_down_diag == position
            DIAGONAL_DIRS << new_down_diag
            i+=1
        end
        DIAGONAL_DIRS
    end


    
end