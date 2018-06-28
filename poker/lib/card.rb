class Card
  
  VALUES = {
    0 => "2",
    1 => "3",
    2 => "4",
    3 => "5",
    4 => "6",
    5 => "7",
    6 => "8",
    7 => "9",
    8 => "10",
    9 => "J",
    10 => "Q",
    11 => "K",
    12 => "A"
  }
  
  SUITS = {
    0 => "Diamonds",
    1 => "Clubs",
    2 => "Hearts",
    3 => "Spades"
  }
  
  attr_reader :value, :suit
  
  def initialize(value,suit)
    @value = value
    @suit = suit
  end
  
  def to_s
    "#{VALUES[self.value]} of #{SUITS[self.suit]}"
  end
  
end