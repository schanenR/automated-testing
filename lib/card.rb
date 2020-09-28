
# card.rb
FACE_CARDS = {1 => "Ace", 11 => "Jack", 12 => "Queen", 13 => "King"}


class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    if (1..13).include? value
      @value = value
    else
      raise ArgumentError, "The card value #{value} is not acceptable."
    end
    if [:hearts, :spades, :clubs, :diamonds].include? suit
    @suit = suit
    else
      raise ArgumentError, "The card suit #{suit} is not acceptable."
    end
  end

  def to_s
    if (11..13).include?(@value) || @value == 1
      face_card = face_conversion(@value)
      return "#{face_card} of #{suit}"
    end
      return "#{value} of #{suit.to_s}"
  end

  def face_conversion(value)
    return FACE_CARDS[value]
  end

end
