# frozen_string_literal: true

require_relative 'piece'

# Creates a Queen piece
class Queen < Piece
  def initialize
    super(color, location)
    @symbol = symbol_char(QUEEN_WHITE, QUEEN_BLACK)
  end
end
