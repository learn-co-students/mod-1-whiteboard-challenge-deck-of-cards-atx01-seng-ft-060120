class Deck

    attr_accessor :suit, :rank, :cards

    def initialize
        suits = ['C', 'S', 'H', 'D']
        ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
        @cards = []
        suits.each do |suit|
            i = 0
            while i < ranks.length do
                card = Card.new(suit, ranks[i])
                @cards << card
                i += 1
            end
        end
        @cards
    end

    def choose_card
        card = cards.sample
        cards.delete(card)
    end

    

end

class Card

    attr_accessor :suit, :rank

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end

end
