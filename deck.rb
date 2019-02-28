class Deck
  # Getter and Setter methods for rank, suit and color
  attr_accessor :cards
 
  # Gets called when you call the new method to create an instance
  # deck = Deck.new
  def initialize
    @ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
    @suits = %w(Spades Diamonds Clubs Hearts)
    @cards = []
    generate_deck
  end
 
  def shuffle_cards
   @cards.shuffle
  end
  
  def generate_deck
    @suits.each do |suit|
      @ranks.size.times do |i|
        # Ternary Operator
        color = (suit == 'Spades' || suit == 'Clubs') ? 'Black' : 'Red' 
        @cards << Card.new(@ranks[i], suit, color)
      end
    end
  end
 
   def display_cards
     @cards.shuffle.each do |card|
       puts "#{card.rank} #{card.suit} (#{card.color})"
     end
   end
   
   def rand_card
    # @cards.sample
    # @rand = rand(1..13)
    # puts "#{@cards.sample.rank} #{@cards.sample.suit} #{@cards.sample.color}"
   @single_card =  "#{@cards.sample.rank} #{@cards.sample.suit} #{@cards.sample.color}"
    # @cards.shuffle.each do |card|
    #   # puts "#{@card.rank.sample}"
    #   #{card.rank} #{card.suit} (#{card.color})
    # end
   end
 end