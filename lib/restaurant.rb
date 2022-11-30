class Restaurant
    attr_reader :opening_time, :name, :dishes

    def initialize(opening_time, name)
        @opening_time = opening_time
        @name = name
        @dishes = []
    end

    def closing_time(time)
        "#{@opening_time.to_i + time}:00"
    end

    def add_dish(dish)
        @dishes << dish
    end

    def open_for_lunch?
        @opening_time.to_i <= 13
    end

    def menu_dish_names
        dishes.map do |dish|
            dish.upcase 
            require 'pry'; binding.pry
        end
    end
    
end