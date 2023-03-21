# frozen_string_literal: true

require_relative 'piece'

# Creates a Bishop piece
class Bishop < Piece
  def initialize(color = 'white', location = [0, 0])
    super(color, location)
    @symbol = symbol_char(BISHOP_WHITE, BISHOP_BLACK)
  end
end
