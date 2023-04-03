# frozen_string_literal: true

require_relative 'piece'

# Creates a King piece
class King < Piece
  def initialize(board = Board.new, color = :white, location = [0, 0])
    super(board, color, location)
    @symbol = symbol_char(KING_WHITE, KING_BLACK)
  end

  # Doublecheck later, as we will have to consider check
  def possible_moves
    # Overwrite the super because King does not iterate over its moveset, but can only do its given moves (one iteration).
    possible_moves = []
    moveset.each do |move|
      col = @location[0] + move[0]
      row = @location[1] + move[1]
      possible_moves << [col, row] unless invalid_location?
    end
    possible_moves
  end

  # Doublecheck later, as we will have to consider check
  def moveset
    [[-1, 1], [0, 1], [1, 1], [1, 0], [1, -1], [0, -1], [-1, -1], [-1, 0]]
  end
end
