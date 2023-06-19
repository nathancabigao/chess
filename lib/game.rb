# frozen_string_literal: true

require_relative './board'
require_relative './game_dialogue'

# Creates a new Chess game instance
class Game
  attr_reader :board, :current_player

  def initialize(board = Board.new, current_player = :white)
    @board = board
    @current_player = current_player
  end

  def toggle_player
    @current_player = @current_player == :white ? :black : :white
  end

  def play
    @board.display
  end
end
