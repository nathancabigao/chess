# frozen_string_literal: true

require_relative 'piece'

# Creates a Knight piece
class Knight < Piece
  def initialize(board = Board.new, color = :white, location = [0, 0])
    super(board, color, location)
    @symbol = symbol_char(KNIGHT_WHITE, KNIGHT_BLACK)
  end

  def possible_moves
    # Overwrite the super because Knight does not iterate over its moveset, but can only do its given moves.
    possible_moves = []
    moveset.each do |move|
      col = @location[0] + move[0]
      row = @location[1] + move[1]
      possible_moves << [col, row] unless invalid_location?
    end
    possible_moves
  end

  def moveset
    [[-2, 1], [-1, 2], [1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1]]
  end
end
