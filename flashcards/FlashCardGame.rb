class FlashCardGame
    def initialize(deck)
        @deck = deck
    end

    def start
        @deck.shuffle
        @deck.cards.each do |card|
            puts card.front
            print "guess the back of the card > "
            guess = gets.chomp

            if guess == card.back
                puts "correct"
            else 
                puts "wrong"
            end
        end
    end
end
        

class Deck
    attr_reader :cards
    def initialize(cards)
        @cards = cards
    end

    def shuffle
        @cards.shuffle
    end
end

class Card
    attr_reader :front, :back

    def initialize(front, back)
        @front = front 
        @back = back
    end
end


card_one = Card.new("B29", "bomber")
card_two = Card.new("P51", "fighter")
cards = [card_one, card_two]

wwIIplanes = Deck.new(cards)

game = FlashCardGame.new(wwIIplanes)
game.start
