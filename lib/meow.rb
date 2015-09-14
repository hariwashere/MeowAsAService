class Meow

    @@emotions = {
        :neutral => 'meow',
        :angry => 'MEOW'
    }

    def initialize(emotion, repeat)
        @repeat = repeat
        @emotion = emotion.to_sym
    end

    def get_response
        response = ''
        meow_text = @@emotions[@emotion]
        for i in 0..@repeat
            response = response + meow_text + ' '
        end
        return response
    end
end
