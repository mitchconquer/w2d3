require 'rspec'
require 'hanoi'

describe Game do
  subject(:hanoi) { Game.new }

  describe '#initialize' do
    it 'creates a board' do
      expect(hanoi.board).to eq([[3,2,1], [], []])
    end
  end

  # describe '#run' do
  #   it 'calls #render' do
  #     expect(hanoi).to receive(:render)
  #     hanoi.run
  #   end
  #   it 'calls #prompt' do
  #     expect(hanoi).to receive(:prompt)
  #     hanoi.run
  #   end
  #   it 'calls #get_input' do
  #     expect(hanoi).to receive(:get_input)
  #     hanoi.run
  #   end
  #   it 'calls #move' do
  #     expect(hanoi).to receive(:move)
  #     hanoi.run
  #   end
  #   it 'calls #won?' do
  #     expect(hanoi).to receive(:won?)
  #     hanoi.run
  #   end
  # end

  describe '#move' do
    it 'should call #valid_move?' do
      expect(hanoi).to receive(:valid_move?)
      hanoi.move([0, 1])
    end
    it 'should move the discs' do
      hanoi.move([0, 1])
      expect(hanoi.board).to eq([[3, 2], [1], []])
    end
  end

  describe '#won?' do

    it 'should return false if the game is not won' do
      hanoi.move([0, 1])
      hanoi.move([0, 2])
      hanoi.move([1, 2])
      hanoi.move([0, 1])
      expect(hanoi.won?).to be(false) #=> false?
    end

    it 'should return true if the discs are in order' do
      hanoi.move([0, 1])
      hanoi.move([0, 2])
      hanoi.move([1, 2])
      hanoi.move([0, 1])
      hanoi.move([2, 0])
      hanoi.move([2, 1])
      hanoi.move([0, 1])
      expect(hanoi.won?).to be(true)
    end

    it 'should return false if the discs are in order on the starting peg' do
      hanoi.move([0, 1])
      hanoi.move([1, 0])
      expect(hanoi.won?).be_false
      expect(hanoi.board).to eq([[3,2,1], [], []])
    end
  end

end
