require 'Singleton'

attr_reader :color, :symbol

class NullPiece < Piece

    def initialize
  
    end
  
    def moves
      false
    end
  
    def symbol
      "null"
    end
  


end  