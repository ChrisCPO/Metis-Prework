class Card
  attr_reader :front

  def initialize(front, back)
    @front = front
    @back = back
  end

  def play
    get_input
    check_back
  end

  private

  def check_back
    if answered_correctly?
      puts "Hooray!"
    else
      puts "I'm sorry, it was actually #{@back}"
    end
  end

  def get_input
    print "What is the answer for: #{front} > "
    @answer = gets.chomp
  end

  def answered_correctly?
    @answer == @back
  end
end

class Deck
  attr_reader :name, :cards

  def initialize(name, cards)
    @name = name
    @cards = cards
  end

  def play
    cards.shuffle.each do |card|
      card.play
    end
  end

  def to_s
    @name
  end
end

class FlashcardGame
  def initialize(decks)
    @decks = decks
  end

  def play
    welcome_banner
    loop do
      choice = get_choice
      if choice == "exit"
        break
      end

      found_deck = get_deck(choice)

      if found_deck
        found_deck.play
      end
    end
  end

  private

  def welcome_banner
    puts "Welcome to Flash Card Game"
    puts "---"
    puts "translate the front of the card correctly"
  end

  def get_choice
    puts "pick a deck"
    puts @decks.join(", ")
    print "Deck > "
    gets.chomp
  end

  def get_deck(choice)
    @decks.find do |deck|
      deck.name == choice
    end
  end
end

class DeckReader
  def initialize(filename)
    @file = File.open(filename, "r")
  end

  def decks
    deck_number = @file.gets.to_i
    deck_number.times.map do
      deck_name = @file.gets.chomp
      Deck.new(deck_name, get_cards)
    end
  end

  def get_cards
    card_number = @file.gets.to_i
    card_number.times.map do
      new_card
    end
  end

  def new_card
    front = @file.gets.chomp
    back = @file.gets.chomp
    Card.new(front, back)
  end
end

deck_reader = DeckReader.new("decks")
decks = deck_reader.decks

game = FlashcardGame.new(decks)
game.play
