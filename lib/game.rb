# frozen_string_literal: true

require_relative './board'
require_relative './game_dialogue'

# Creates a new Chess game instance
class Game
  attr_reader :board

  def initialize
    @board = Board.new
  end
end
