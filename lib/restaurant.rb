class Restaurant
    attr_reader :opening_time,
                :name,
                :dishes
    
    def initialize(opening_time, name)
        @name = name
        @opening_time = opening_time
        @dishes = []
    end

    def closing_time(hours)
        "#{@opening_time.to_i + hours}:00"
    end

    def add_dish(dish)
        @dishes << dish
    end

    def open_for_lunch?
        @opening_time.to_i < 12 
    end

    def menu_dish_names
        dishes.map do |dish|
            dish.upcase
        end
    end

    def announce_closing_time(hours)
        if @opening_time.to_i < 12
            "#{@name} will be closing at #{@opening_time.to_i + hours}:00AM"
        else
            "#{@name} will be closing at #{(@opening_time.to_i + hours) - 12}:00PM"
        end  
    end


end