# frozen_string_literal: true

require_relative 'piece'

# Creates a Pawn piece
class Pawn < Piece
  def initialize(board = Board.new, color = :white, location = [0, 0])
    super(board, color, location)
    @symbol = symbol_char(PAWN_WHITE, PAWN_BLACK)
  end

  def possible_moves
    # Overwrite the super because Pawn can only advance a row (or two, if it hasn't moved).
    possible_moves = []
    row_change = color == :white ? 1 : -1
    possible_moves << location + [0, row_change] unless invalid_location?
    possible_moves << location + [0, row_change * 2] unless moved? || invalid_location?
    possible_moves
  end
end
