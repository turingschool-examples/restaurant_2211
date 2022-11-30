class Restaurant
    attr_reader :opening_time,
    :name, :dishes

    def initialize(opening_time, name)
        @opening_time = opening_time
        @name = name
        @dishes = []
        
    end

    def closing_time(number)
        "#{opening_time.to_i + number}:00"
    end

    def add_dish(dish)
        @dishes << dish
    end

    def open_for_lunch
        if opening_time == "12:00"
            @dishes.map do |dish|
                dish.upcase
            end
        end
    end
end