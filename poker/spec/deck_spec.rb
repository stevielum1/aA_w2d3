require 'deck'

RSpec.describe Deck do
  subject(:deck) {Deck.new}
  describe '#initialize' do
    it 'creates a deck of 52 cards' do
      expect(deck.cards.length).to eq(52)
    end
  end
  
  describe '#shuffle!' do
    it 'shuffles the deck' do
      cards_copy = deck.cards.dup
      expect(deck.shuffle!.cards).to_not eq(cards_copy)
    end
    
    it 'returns the same deck' do
      expect(deck.shuffle!).to be(deck)
    end
  end
  
end