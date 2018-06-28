class Hand
  
  attr_reader :cards
  
  def initialize(cards)
    @cards = cards
  end
  
  def hand_rank
    
  end
  
  def straight_flush?
    suit = cards.first.suit
    cards.each { |card| return false unless card.suit == suit }
    
    values = []
    cards.each { |card| values << card.value }
    return false unless (values.min..values.max).to_a.length == cards.length
    
    true
  end
  
end