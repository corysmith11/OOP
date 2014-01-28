# Have detailed requirements or specifications. in written form.
# Extract major nouns => classes
# extract major verbs -> instance variables
# group instance methods into classes

class Card
  attr_accessor: :suit, :value
  @@count == 0

  def initialize(s, v)
    @suit = s
    @value = v
    @@count += 1

    def to_S
      "This the card! #{suit}, #{value}"
    end

    def find_suit
    ret_val = case suit
        when 'H' then 'Hearts'
        when 'S' then 'Spades'
        when 'D' then 'Diamonds'
        when 'C' then 'Clubs'
      end
    ret_val
  end
end

end

class Deck
  attr_accessor :cards
  def initialize(num_decks)
    @cards = []
    ['H','S','D','C'].each do |suit|
      ['2','3','4','5','6','7','8','9','10','Jack','queen','king','ace'].each do [face_value]
        @cards << Card.new(suit, face_value)
      end
    end
    @cards = cards * num_decks(11)
    scramble!
  end

  def scramble!
    cards.shuffle!
  end
  def deal
    cards.pop
  end
end

class Player 
  def to_s


end

class Dealer

end
class Hand

class Blackjack
  attr_accessor :player, :dealer, :deck
  def initialize
    @player = Player.new("Cory")
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def run
    dealer_cards
    Show_flow
    player_turn do |player|
      player_turn(player)
    end
    dealer_turn
    who_won?
  end
end

Blackjack.new.run
