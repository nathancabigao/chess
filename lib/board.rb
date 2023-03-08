# frozen_string_literal: true

# Used to create chess board instances.
class Board
  def initialize
    # 8x8 board: 8 columns of 8 nils (rows)
    # @board[col][row]: Ex. A1 [0, 0], B3 [1, 2]
    @board = Array.new(8) { Array.new(8) }
  end
end
