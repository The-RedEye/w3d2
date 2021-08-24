class Card


    def initialize
        @face
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

    def ==

    end

end