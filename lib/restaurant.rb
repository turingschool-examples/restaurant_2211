class Restaurant
    
    attr_reader :opening_time,
     :name, 
     :dishes, 
     :hours_past_open,
     :closing_time,
     :menu_dish_names

    def initialize(opening_time, name)
        @opening_time = opening_time
        @name = name
        @dishes = []
        @closing_time = ""
        @menu_dish_names = []
    end
  
    def closing_time(hours_past_open)
        closing_time_integer =
        @opening_time[0..1].to_i + hours_past_open
        @closing_time = "#{closing_time_integer}:00"
    end

    def add_dish(dish_name)
        @dishes << dish_name
    end

    def open_for_lunch?
        if @opening_time[0..1].to_i <= 12
            then true
        else
            false
        end
    end

    def menu_dish_names
        @menu_dish_names = @dishes.map do |dish|
            dish.upcase
        end
    end

    def announce_closing_time(hours_past_open)
        closing_time_integer =
        @opening_time.to_i + hours_past_open # (11 and 23)
        if closing_time_integer > 12
            pm_time = closing_time_integer - 12
            p "#{@name} will be closing at #{pm_time}:00PM"
        else
            p "#{name} will be closing at #{closing_time_integer}:00AM"
        end
    end
end