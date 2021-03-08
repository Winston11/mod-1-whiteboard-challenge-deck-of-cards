class Deck 
    attr_accessor :cards

    def initialize
        @ranks = ("A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K")
        @suits = ("Hearts", "Clubs", "Diamonds", "Spades")
        @cards = []
    
        @ranks.each do |rank|
          @suits.each do |suit|
            @cards << Card.new(rank, suit)
          end
        end
      end
end

class Card 
attr_reader :rank, :suit, :color
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    if @rank == 'Clubs' || @rank == 'Spades'
      @color = 'black'
    else
      @color = 'red'
    end
  end
end
