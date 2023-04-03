# frozen_string_literal: true

require_relative 'piece'

# Creates a Queen piece
class Queen < Piece
  def initialize(board = Board.new, color = :white, location = [0, 0])
    super(board, color, location)
    @symbol = symbol_char(QUEEN_WHITE, QUEEN_BLACK)
  end

  def moveset
    [[-1, 1], [0, 1], [1, 1], [1, 0], [1, -1], [0, -1], [-1, -1], [-1, 0]]
  end
end
