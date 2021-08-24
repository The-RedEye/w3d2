require_relative "./card.rb"
require "byebug"

class Board 
    attr_reader :cards, :board

    def initialize(n = 4)
        # @card = Card.new
        # debugger
        @board = Array.new(n){Array.new(n) {:X}}
        @size = n * n
        @pairs = @size / 2
    end

    def [] (position)
        # debugger
      row = position[0]
      col = position[1]
      @board[row][col]

    end

    def []= (position, value)
        # debugger
        row , col = position
        @board[row][col] = value
        
    end

    def populate
        cards = Array.new(@pairs)
        (0...cards.length).each do |card|
            # debugger
            temp = Card.new
            while cards[card] == temp
                # debugger
                temp = Card.new
            end
            # debugger
            cards[card] = temp
        end    

      
        row = rand(0...@board.length)
        col = rand(0...@board.length)
        position = [row, col]
        
        cards.each do |card|
            2.times do
                # debugger
                position = self.find_empty
                # debugger
                self[position] = card # places first pair     
                
                # card_count+=1
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

    def find_empty
        #give array or empty positions
        #iterate through the board
        while true
            row = rand(0...@board.length)
            col = rand(0...@board.length)
            position = [row, col]
            # while @board[position] 
            # p position
            # p @board[position]
            # debugger
            p self[position]
            if self[position] == :X                
                return position
            end
        # end
        end
    end

    def render

    end

    def won?

    end

    def reveal

    end

    def guess_pos

    end
end

b= Board.new
b.populate
p b

