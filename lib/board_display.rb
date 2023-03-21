# frozen_string_literal: true

require 'colorize'

require_relative './pieces/piece'
require_relative './pieces/pawn'
require_relative './pieces/rook'
require_relative './pieces/knight'
require_relative './pieces/bishop'
require_relative './pieces/queen'
require_relative './pieces/king'

# Methods for displaying the Chess Board as the game goes on.
module BoardDisplay
  def square(symbol, color = :default, background = :default, mode = :default)
    " #{symbol} ".colorize(color: color, background: background, mode: mode)
  end

  def display_chess_board
    %w[_ a b c d e f g h].each { |col| print square(col, :light_blue, :black, :bold) }
    print "\n"
    bg = :light_blue
    7.downto(0).each do |row|
      print square((row + 1).to_s, :light_blue, :black, :bold)
      bg = bg == :white ? :light_blue : :white
      8.times do |col|
        symbol = @board[col][row].nil? ? ' ' : @board[col][row].symbol
        print square(symbol, :black, bg)
        bg = bg == :white ? :light_blue : :white
      end
      print "\n"
    end
  end
end
