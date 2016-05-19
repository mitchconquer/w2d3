class Card
  attr_reader :suit, :value
  @@values = {
    14 => :Ace,
    13 => :King,
    12 => :Queen,
    11 => :Jack,
  }
  (2..10).each do |num|
    @@values[num] = num
  end

  def initialize(suit, value)
    @suit, @value = suit, value
  end

  def to_s
    "[#{@@values[@value]} #{@suit}]"
  end

  def ==(card)
    self.to_s == card.to_s
  end

  def inspect
    self.to_s
  end
end

class Deck
  SUITS = [:hearts, :clubs, :diamonds, :spades]
  VALUES = (2..14).to_a
  attr_reader :cards

  def initialize
    @cards = assemble_deck
  end



  def assemble_deck
    deck = []
    SUITS.each do |suit|
      VALUES.each do |value|
        deck << Card.new(suit, value)
      end
    end
    deck
  end
end
