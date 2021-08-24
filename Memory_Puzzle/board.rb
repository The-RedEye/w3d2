require_relative "card.rb"

class Board 

    def initialize(n = 4)
        @card = Card.new
        @board = Array.new(n){Array.new(n) {:X}}
        @size = n * n
        @pairs = @size / 2
    end

    def [] (position)
      row , col = position
      @board[row][col]

    end

    def []= (position, value)
      row , col = position
      @board[row][col] = value

    end

    def populate

      count = 0

      while (count<@pairs)
        row = (0...@board.length).sample  #gets initial position, may/maynot be taken
        col = (0...@board.length).sample
        position = [row, col]
        card_count = 0
        card = 'A' #Card.new()

        while card_count<=2

          while self[positon] != :X       #rolls until position is not taken
            row = (0...@board.length).sample
            col = (0...@board.length).sample
            position = [row, col]
          end   

          self[positon] = card   # places first pair
          card_count+=1
        end

   



      end
        
        #make @pairs num of cards
        #puts the cards in the board randomly
        #do it again until there are 2 of each card

        #while the count of pairs is not @pairs 
            #loop and find values for row and col
                #if not empty roll again, if empty fill
                #repeat for the same value
        
        
    end

end