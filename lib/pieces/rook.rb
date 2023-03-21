# frozen_string_literal: true

require_relative 'piece'

# Creates a Rook piece
class Rook < Piece
  def initialize(color = 'white', location = [0, 0])
    super(color, location)
    @symbol = symbol_char(ROOK_WHITE, ROOK_BLACK)
  end
end
