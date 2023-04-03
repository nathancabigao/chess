# frozen_string_literal: true

require_relative 'piece'

# Creates a Knight piece
class Knight < Piece
  def initialize(board = Board.new, color = :white, location = [0, 0])
    super(board, color, location)
    @symbol = symbol_char(KNIGHT_WHITE, KNIGHT_BLACK)
  end
end
