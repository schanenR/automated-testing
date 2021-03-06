require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      suit = :diamonds
      value = 2

      card = Card.new(value, suit)
      string = card.to_s

      expect _(string).must_equal '2 of diamonds'

    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      # The current implementation of to_s does not address this feature
      # Write the test, see it fail, then modify to_s to make it pass!
      # (Consider writing a helper method!)
      #
      # For reference:
      #  1: Ace
      #  11: Jack
      #  12: Queen
      #  13: King
      suit_1 = :diamonds
      value_1 = 13
      suit_2 = :spades
      value_2 = 11

      card_1 = Card.new(value_1, suit_1)
      card_2 = Card.new(value_2, suit_2)

      string_1 = card_1.to_s
      string_2 = card_2.to_s

      expect _(string_1).must_equal 'King of diamonds'
      expect _(string_2).must_equal 'Jack of spades'

      p card_1.value
      p card_2.suit

    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      card = Card.new(13, :hearts)

      expect (card.value).must_equal 13
    end

    it "Can retrieve the value of the card using a `.suit`." do
      card = Card.new(4,:clubs)

      expect (card.suit).must_equal :clubs
    end
  end

end
