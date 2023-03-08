# frozen_string_literal: true

require_relative 'piece'

# Creates a Knight piece
class Knight < Piece
  def initialize
    super(color, location)
    @symbol = symbol_char(KNIGHT_WHITE, KNIGHT_BLACK)
  end
end
