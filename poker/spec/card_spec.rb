require 'card'

RSpec.describe Card do
  subject(:card) { Card.new(0,0) }
  
  describe '#initialize' do
    it 'creates a card with suit and value' do
      expect(card.suit).to eq(0)
      expect(card.value).to eq(0)
    end
  end
  
  describe '#to_s' do
    it 'prints verbose version of card' do
      expect(card.to_s).to eq("2 of Diamonds")
    end
  end
end