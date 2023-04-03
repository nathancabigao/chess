# frozen_string_literal: true

require_relative 'piece'

# Creates a Rook piece
class Rook < Piece
  def initialize(board = Board.new, color = :white, location = [0, 0])
    super(board, color, location)
    @symbol = symbol_char(ROOK_WHITE, ROOK_BLACK)
  end

  def moveset
    [[1, 0], [-1, 0], [0, 1], [0, -1]]
  end
end
