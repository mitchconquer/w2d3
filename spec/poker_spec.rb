require 'rspec'
require 'card'

describe Card do
  let (:card1) {Card.new(:hearts, 12)}
  let (:card2) {Card.new(:hearts, 7)}
  let (:card3) {Card.new(:clubs, 1)}
  let (:card4) {Card.new(:clubs, 14)}

  describe '#initialize(suit, value)' do
    it 'sets the card suit' do
      expect(card1.suit).to eq(:hearts)
    end
    it 'sets the card value' do
      expect(card4.value).to eq(14)
    end
  end

  describe '#suit' do
    it 'returns the suit of the card' do
      expect(card1.suit).to eq(:hearts)
    end
  end

  describe '#value' do
    it 'returns the value of the card' do
      expect(card4.value).to eq(14)
    end
  end
end

describe Deck do
  let(:deck) { Deck.new }
  describe '#initialize' do
    it 'contains 52 cards' do
      expect(deck.cards.count).to eq(52)
    end
    it 'ensures that each card is unique' do
      
  end

  describe '#shuffle!' do
    it 'should shuffle the deck'
  end

  describe '#deal(num)' do
    it 'deals the correct number of card'
  end

  describe '#deal_hands(players)' do
    'it deals 5 cards to each player'
  end
end

describe Hand do
  describe '#initialize' do

  end

  describe '#best_hand' do
    it 'returns the best hand the player can play'
  end

  describe '#remove_card(card)' do
    it 'removes the card from the hand'
  end

  describe '#add_card(card)' do
    it 'adds a card to the hand'
  end

end

describe Player do
  describe '#initialize' do
    it 'should make a new player'
    # it 'should give the player X number of chips'
    it 'should initialize with an empty hand'

  end

  describe '#discard(*cards)' do
    it 'should not let you discard 4 or more cards'
    it 'lets you discard anything from 0 to 3 cards'
  end

  describe '#raise(amount)' do
    it 'adds amount to the pot'
    it 'substracts amount from current player\'s stack'
    it 'doesn\'t let amount exceed stack'
  end

  describe '#fold' do
    it ''
  end
end

describe Game do
  describe '#initialize(num_players, chips_per_player)' do
    it 'creates an instance of game'
    it 'creates num number of players players'
    it 'give chips to players'

  end

  describe '#setup' do
    it 'creates a deck'
    it 'shuffles the deck'
    it 'deals hands to players'
  end

  describe '#run' do
    it 'goes through first round of betting'
    it 'goes through stage of discarding and adding'
    it 'goes through second round of betting'
    it 'chooses the winner'
    it 'gives the pot to the winner'
  end

end
