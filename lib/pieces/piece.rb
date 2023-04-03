# frozen_string_literal: true

require_relative '../board'

# Static vars for piece symbols
PAWN_WHITE = "\u2659"
PAWN_BLACK = "\u265F"
ROOK_WHITE = "\u2656"
ROOK_BLACK = "\u265C"
KNIGHT_WHITE = "\u2658"
KNIGHT_BLACK = "\u265E"
BISHOP_WHITE = "\u2657"
BISHOP_BLACK = "\u265D"
QUEEN_WHITE = "\u2655"
QUEEN_BLACK = "\u265B"
KING_WHITE = "\u2654"
KING_BLACK = "\u265A"

# Superclass for Chess pieces
class Piece
  attr_reader :color, :location, :symbol, :move_history

  def initialize(board = Board.new, color = :white, location = [0, 0])
    @board = board
    @color = color
    @location = location
    @symbol = ' '
    @move_history = []
  end

  def symbol_char(white_symbol, black_symbol)
    @color == :white ? white_symbol : black_symbol
  end

  def record_move
    @move_history << location
  end

  def update_location(col, row)
    @location = [col, row]
  end

  def moved?
    @move_history.empty?
  end

  # Only for movement, not captures
  def possible_moves
    possible_moves = []
    moveset.each do |move|
      col = @location[0] + move[0]
      row = @location[1] + move[1]
      until invalid_location?(col, row)
        possible_moves << [col, row]
        col += move[0]
        row += move[1]
      end
    end
    possible_moves
  end

  def invalid_location?(board, col, row)
    return true if board.board[col][row]

    return true if !col.between(0, 7) || !row.between(0, 7)

    false
  end

  private

  def moveset
    []
  end
end
