# frozen_string_literal: true

require_relative '../lib/board'

describe Board do
  subject(:board) { described_class.new }

  describe '#starting_positions' do
    before do
      board.starting_positions
    end

    it 'has all white pieces in rows 1 and 2' do
      first_two_rows = []
      [0, 1].each { |row| 8.times { |col| first_two_rows << board.board[col][row] } }
      expect(first_two_rows.all? { |piece| piece.color == :white }).to be true
    end

    it 'has all black pieces in rows 7 and 8' do
      last_two_rows = []
      [6, 7].each { |row| 8.times { |col| last_two_rows << board.board[col][row] } }
      expect(last_two_rows.all? { |piece| piece.color == :black }).to be true
    end

    it 'has all pawns in row 2' do
      row_two = []
      8.times { |col| row_two << board.board[col][1] }
      expect(row_two.all? { |piece| piece.instance_of? Pawn }).to be true
    end

    it 'has all pawns in row 7' do
      row_seven = []
      8.times { |col| row_seven << board.board[col][6] }
      expect(row_seven.all? { |piece| piece.instance_of? Pawn }).to be true
    end

    it 'has 2 rooks in positions on both sides' do
      rooks = []
      [0, 7].each { |row| [0, 7].each { |col| rooks << board.board[col][row] } }
      expect(rooks.all? { |piece| piece.instance_of? Rook }).to be true
    end

    it 'has 2 knights in positions on both sides' do
      knights = []
      [0, 7].each { |row| [1, 6].each { |col| knights << board.board[col][row] } }
      expect(knights.all? { |piece| piece.instance_of? Knight }).to be true
    end

    it 'has 2 bishops in positions on both sides' do
      bishops = []
      [0, 7].each { |row| [2, 5].each { |col| bishops << board.board[col][row] } }
      expect(bishops.all? { |piece| piece.instance_of? Bishop }).to be true
    end

    it 'has a queen in position (column D) on both sides' do
      queens = []
      [0, 7].each { |row| queens << board.board[3][row] }
      expect(queens.all? { |piece| piece.instance_of? Queen }).to be true
    end

    it 'has a king in position (column E) on both sides' do
      kings = []
      [0, 7].each { |row| kings << board.board[4][row] }
      expect(kings.all? { |piece| piece.instance_of? King }).to be true
    end
  end
end
