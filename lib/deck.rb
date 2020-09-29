
# deck.rb
VALUES_LIST = (1..13).to_a
SUITS_LIST = [:hearts, :clubs, :spades, :diamonds]



require_relative 'card'

class Deck

  def initialize(values, suits)
    @cards = []
    values.each do |value|
      suits.each do |suit|
        @cards << Card.new(suit, value)
      end
    end
  end

  def draw
    drawn_card = @cards.last

  end

  def shuffle
    return @cards.shuffle!
  end
end
