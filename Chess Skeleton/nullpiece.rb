require 'Singleton'

attr_reader :color, :symbol

class NullPiece < Piece
  include Singleton
    def initialize
      nil
    end
  
    def moves
      false
    end
  
    def symbol
      " "
    end
end  