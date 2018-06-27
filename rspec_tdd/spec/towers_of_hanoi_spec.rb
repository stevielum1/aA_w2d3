require 'towers_of_hanoi'

RSpec.describe TowersOfHanoi do
  subject(:hanoi) { TowersOfHanoi.new }
  
  describe '#initialize' do
    it 'creates the starting towers' do
      expect(hanoi.towers).to eq([[1,2,3],[],[]])
    end
  end
  
  describe '#move' do
    it 'moves disk from tower to tower' do
      hanoi.move(0,1)
      expect(hanoi.towers).to eq([[2,3],[1],[]])
    end
    
    it 'raises an error when given an invalid move' do
      expect { hanoi.move("one",2) }.to raise_error("Invalid move.")
    end
    
    it 'raises an error when towers are out of bounds' do
      expect { hanoi.move(-1,2) }.to raise_error("tower out of bounds.")
    end

    it 'raises an error when from_tower is empty' do
      expect { hanoi.move(1,2) }.to raise_error("from tower is empty")
    end
    
    it 'raises an error when from_tower_disk is bigger than to_tower_disk' do
      hanoi.move(0,1)
      expect {hanoi.move(0,1)}.to raise_error("Disk is too big!")
    end
  end
  
  describe '#won?' do
    let(:winning_towers) { [[],[],[1,2,3]] }
    it 'returns true if game is won' do
      allow(hanoi).to receive(:towers).and_return(winning_towers)
      expect(hanoi.won?).to be true
    end
    
    it 'returns false if game is not won' do
      expect(hanoi.won?).to be false
    end
  end
  
end