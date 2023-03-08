# frozen_string_literal: true

require_relative 'piece'

# Creates a Pawn piece
class Pawn < Piece
  def initialize
    super(color, location)
    @symbol = symbol_char(PAWN_WHITE, PAWN_BLACK)
  end
end
