class Restaurant
    attr_reader :opening_time,
                :name,
                :dishes,
                :restaurant

    def initialize(opening_time, name)
        @opening_time = opening_time
        @name = name
        @dishes = []
    end

    def closing_time(time)
        open = opening_time.delete_suffix(":00").to_i
        close = open + time
        return "#{close}:00"
    end

    def add_dish(dish)
        dishes << dish
    end
end