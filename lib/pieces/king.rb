# frozen_string_literal: true

require_relative 'piece'

# Creates a King piece
class King < Piece
  def initialize(board = Board.new, color = :white, location = [0, 0])
    super(board, color, location)
    @symbol = symbol_char(KING_WHITE, KING_BLACK)
  end
end
