class Card

    attr_reader :face

    def initialize
        @face = ("A".."Z").to_a.sample
        @face_up = true
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
        p self
        p other_card
        @face == other_card.face
    end

end