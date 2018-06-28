require_relative 'card'

class Deck
  
  attr_reader :cards
  
  def initialize
    @cards = []
    make_default_deck
  end
  
  def make_default_deck
    (0..12).each do |value|
      (0..3).each do |suit|
        cards << Card.new(value, suit)
      end
    end
  end
  
  def shuffle!
    @cards.shuffle!
    self
  end
  
  def draw_cards(num)
    result = []
    num.times do |_|
      result << draw
    end
    result
  end
  
  def reset_deck
    @cards = []
    make_default_deck
  end
  
  private
  
  def draw
    cards.pop
  end
  
end