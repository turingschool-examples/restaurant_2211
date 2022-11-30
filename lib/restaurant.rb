class Restaurant
    attr_reader :opening_time, :name, :dishes

    def initialize (opening_time, name)
        @opening_time = opening_time
        @name = name
        @dishes = []
    end

    def closing_time(num)
        "#{num + 10}:00"
    end
  
    def add_dish(dish_name)
        @dishes << dish_name
    end

    def open_for_lunch?
        @opening_time.to_i <= 12
    end

    def menu_dish_names
        @upcase_dishes = []
        @dishes.each do |dish|
            @upcase_dishes << dish.upcase
        end
        @upcase_dishes
    end

    def announce_closing_time(time_open)
        time_closed = @opening_time.to_i + time_open
        if time_closed < 12
            "#{@name} will be closing at #{time_closed}:00AM"
        else
            standard_time = time_closed - 12           
            "#{@name} will be closing at #{standard_time}:00PM"
        end

    end

end