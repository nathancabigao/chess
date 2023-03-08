# frozen_string_literal: true

# Superclass for Chess pieces
class Piece
  def initialize(color = 'white', location = [0, 0])
    @color = color
    @location = location
    @symbol = ' '
  end
end
