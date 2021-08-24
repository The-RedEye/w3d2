require_relative "./card.rb"
require "byebug"

class Board 
    attr_reader :cards, :board

    def initialize(n = 4)
        # @card = Card.new
        # debugger
        @board = Array.new(n){Array.new(n) {Card.new(true)}}
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

    def populate #[a, c, c, a, d]
     
        cards = Array.new(@pairs){Card.new(false)}

        cards.map! do |card|
            # debugger
            count_same_face = -1

            (0...cards.length).each {|i| count_same_face+=1 if card.face == cards[i].face}
              
            
            while count_same_face>1
              card = Card.new(false)
              count_same_face = -1
              (0...cards.length).each {|i| count_same_face+=1 if card.face == cards[i].face}
            end
            # debugger
              card
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
        

        
    end

    def find_empty
        #give array or empty positions
        #iterate through the board
        while true
            row = rand(0...@board.length)
            col = rand(0...@board.length)
            position = [row, col]
                       
            if self[position] == Card.new(true)               
                return position
            end
        # end
        end
    end

    def render
      puts "    #{ (0...@board.length).to_a.join(" ") }"
      @board.each_with_index do  |row, idx|
        
        arr = row.map do |card|
          if card.face_up
            card.face
          else
            '-'
          end
        end
        arr =arr.join(" ") 
        p "#{ idx}  #{arr}"

      end

    end

    def won?

    end

    def reveal

    end

    def guess_pos

    end
end


