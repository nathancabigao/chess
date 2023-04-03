# frozen_string_literal: true

require_relative 'piece'

# Creates a Pawn piece
class Pawn < Piece
  def initialize(board = Board.new, color = :white, location = [0, 0])
    super(board, color, location)
    @symbol = symbol_char(PAWN_WHITE, PAWN_BLACK)
  end

  def possible_moves
    possible_moves = []
    row_change = color == :white ? 1 : -1
    possible_moves << location + [0, row_change]
    possible_moves << location + [0, row_change * 2] unless moved?
    possible_moves
  end
end
