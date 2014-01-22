require 'spec_helper'
require_relative '../src/player'

describe Player do
  subject(:player) { Player.new('Fei') }
  describe '#initialize' do
    it "initializes with a player name" do
      expect(player.name).to eq 'Fei'
    end
  end

  describe '#initiate_game' do
    it "initiates a game given a max_width and max_height" do
      expect(player.initiate_game(max_width: 8, max_height: 20)).to be_a Game
    end

    it "does not raise an error if the optional game parameters are missing" do
      expect { player.initiate_game }.not_to raise_error
    end
  end

  describe 'Integration' do
    it "debugz" do
      board = Game.new.board
      board.add_block
      board.move_block_right
      board.move_block_right
      board.drop_block

      board.add_block
      board.move_block_left
      board.drop_block

      board.add_block
      board.drop_block
      board.render

      board.add_block
      board.move_block_right
      board.move_block_right
      board.move_block_right
      board.drop_block

      board.add_block
      board.move_block_right
      board.move_block_right
      board.move_block_right
      board.move_block_left
      # board.move_block_left
      board.drop_block
      board.render
    end
  end

  # Not going to test #play_game here, please run tetris.rb
end
