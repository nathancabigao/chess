# frozen_string_literal: true

require_relative 'piece'

# Creates a King piece
class King < Piece
  def initialize
    super(color, location)
    @symbol = symbol_char(KING_WHITE, KING_BLACK)
  end
end
