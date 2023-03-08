# frozen_string_literal: true

# Static vars for piece symbols
PAWN_WHITE = "\u2659"
PAWN_BLACK = "\u265F"
ROOK_WHITE = "\u2656"
ROOK_BLACK = "\u265C"
KNIGHT_WHITE = "\u2658"
KNIGHT_BLACK = "\u265E"
BISHOP_WHITE = "\u2657"
BISHOP_BLACK = "\u265D"
QUEEN_WHITE = "\u2655"
QUEEN_BLACK = "\u265B"
KING_WHITE = "\u2654"
KING_BLACK = "\u265A"

# Superclass for Chess pieces
class Piece
  attr_reader :color, :location, :symbol

  def initialize(color = 'white', location = [0, 0])
    @color = color
    @location = location
    @symbol = ' '
  end

  def symbol_char(white_symbol, black_symbol)
    @color == 'white' ? white_symbol : black_symbol
  end
end
