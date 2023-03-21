# frozen_string_literal: true

require_relative './pieces/piece'
require_relative './pieces/pawn'
require_relative './pieces/rook'
require_relative './pieces/knight'
require_relative './pieces/bishop'
require_relative './pieces/queen'
require_relative './pieces/king'

# Used to create chess board instances.
class Board
  attr_reader :board

  def initialize
    # 8x8 board: 8 columns of 8 nils (rows)
    # @board[col][row]: Ex. A1 [0, 0], B3 [1, 2]
    @board = Array.new(8) { Array.new(8) }
    starting_positions
  end

  def display
    #puts "0 0 is #{@board[0][0].symbol} #{@board[0][0].location.inspect}"
    puts '   | a | b | c | d | e | f | g | h |'
    7.downto(0).each do |row|
      print " #{row + 1} |"
      8.times do |col|
        symbol = @board[col][row].nil? ? ' ' : @board[col][row].symbol
        print " #{symbol} |"
      end
      print "\n"
    end
  end

  def starting_positions
    starting_pawns('white')
    starting_unique_pieces('white')
    starting_pawns('black')
    starting_unique_pieces('black')
  end

  # Places starting pawns depending on the color
  def starting_pawns(color)
    row = color == 'white' ? 1 : 6
    8.times do |col|
      @board[col][row] = Pawn.new(color, [col, row])
    end
  end

  def starting_unique_pieces(color)
    row = color == 'white' ? 0 : 7
    [0, 7].each { |col| @board[col][row] = Rook.new(color, [col, row]) }
    [1, 6].each { |col| @board[col][row] = Knight.new(color, [col, row]) }
    [2, 5].each { |col| @board[col][row] = Bishop.new(color, [col, row]) }
    @board[3][row] = Queen.new(color, [3, row])
    @board[4][row] = King.new(color, [4, row])
  end
end
