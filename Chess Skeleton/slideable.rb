module Slideable
    HORIZONTAL_DIRS:[]

    DIAGONAL_DIRS:[]

    def horizontal_dirs
        position = Piece.position #[0,0]
        x, y = position
        i = 0
        
        while i < 8
            new_horiz_move = board[x][y+i] unless new_horiz_move == position
            HORIZONTAL_DIRS << new_horiz_move

            new_vert_move = board[x+1][y] unless new_vert_move == position
            HORIZONTAL_DIRS << new_vert_move

            i+=1
        end
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
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

    def moves
        if Piece.symbol == "♗"
            HORIZONTAL_DIRS
        elsif Piece.symbol == "♖"
            DIAGONAL_DIRS
        elsif Piece.symbol == "♕"
            HORIZONTAL_DIRS + DIAGONAL_DIRS


    end

    private
    def move_dirs
    end

    def grow_unblocked_moves_in_dir(dx, dy)
    end


    
end