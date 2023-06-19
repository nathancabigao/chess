# frozen_string_literal: true

require_relative '../lib/game'

describe Game do
  subject(:game) { described_class.new }

  describe '#toggle_player' do
    context "when White's turn" do
      subject(:game_white) { described_class.new }
      it 'toggles to Black' do
        expect { game_white.toggle_player }.to change { game_white.current_player }.from(:white).to(:black)
      end
    end

    context "when Black's turn" do
      subject(:game_black) { described_class.new(Board.new, :black) }
      it 'toggles to White' do
        expect { game_black.toggle_player }.to change { game_black.current_player }.from(:black).to(:white)
      end
    end
  end
end
