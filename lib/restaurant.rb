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
        open = opening_time.slice(0..1).to_i
        close = open + time
        return "#{close}:00"
    end

    def add_dish(dish)
        dishes << dish
    end

    def open_for_lunch?
       if opening_time.slice(0..1).to_i < 12
            return true
        else
            return false
        end
    end

    def menu_dish_names
        menu = []
        dishes.each do |dish|
            menu << dish.upcase
        end
        return menu
    end

    def announce_closing_time(hours)
        if opening_time.size == 5
            close_hours = opening_time.slice(0..1).to_i + hours
        else
            close_hours = opening_time.slice(0).to_i + hours
        end

        if close_hours > 12
            converted = "#{close_hours-12}:00PM"
        else
            converted = "#{close_hours}:00AM"
        end

        return "#{name} will be closing at #{converted}"
    end
end