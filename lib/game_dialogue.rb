# frozen_string_literal: true

# Dialogue for the chess game.
module GameDialogue
  def welcome
    <<~HEREDOC
      Welcome to Chess!
      This is a two-player game.

      Please select an option:
      [1] New Game
      [2] Load Game
    HEREDOC
  end

  def introduction
    <<~HEREDOC
      HOW TO PLAY:
        Each game starts with White's turn, during their turn players are additionally permitted to resign or save the game to be played at a later time.
        Step 1:
          Enter the coordinates of the piece you wish to move.
        Step 2:
          Enter the coordinates of a legal move, or a legal capture.
    HEREDOC
  end
end
