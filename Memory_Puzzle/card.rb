class Card

    attr_reader :face, :face_up

    def initialize(is_empty = true)
      if is_empty
        @face = '0'
      else
        @face = ("A".."Z").to_a.sample
      end
        @face_up = false
    end


    def hide
        if @face_up == true
            @face_up = false
        end
    end

    def reveal
        if @face_up == false
            @face_up = true
        end
    end

    def to_s

    end

    def ==(other_card)
      @face == other_card.face
    end

end