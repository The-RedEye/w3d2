require_relative "card.rb"

class Board 

    def initialize(n = 4)
        @card = Card.new
        @board = Array.new(n){Array.new(n)}
        @size = n * n
        @pairs = @size / 2
    end

    def populate
        #make @pairs num of cards
        #puts the cards in the board randomly
        #do it again until there are 2 of each card

        #while the count of pairs is not @pairs 
            #loop and find values for row and col
                #if not empty roll again, if empty fill
                #repeat for the same value
        
        
    end

end