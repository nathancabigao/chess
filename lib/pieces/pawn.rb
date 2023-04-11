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
    row_change = @color == :white ? 1 : -1
    unless invalid_location?(@board, @location[0], @location[1] + row_change)
      possible_moves << vector_addition(@location, [0, row_change])
    end
    unless moved? || invalid_location?(@board, @location[0], @location[1] + (row_change * 2))
      possible_moves << vector_addition(@location, [0, row_change * 2])
    end
    possible_moves
  end

  # TODO: Check for en passant
  def possible_captures
    possible_captures = []
    row_change = @color == :white ? 1 : -1
    [-1, 1].each do |col|
      dest = vector_addition(@location, [col, row_change])
      possible_captures << vector_addition(@location, [col, row_change]) if enemy_piece?(dest[0], dest[1])
    end
  end
end
