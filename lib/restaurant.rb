class Restaurant
    
    attr_reader :opening_time,
     :name, 
     :dishes, 
     :hours_past_open,
     :closing_time
    def initialize(opening_time, name)
        @opening_time = opening_time
        @name = name
        @dishes = []
        @closing_time = ""
    end
  
    def closing_time(hours_past_open)
        closing_time_integer =
        @opening_time[0..1].to_i + hours_past_open
        @closing_time = "#{closing_time_integer}:00"
    end

    def add_dish(dish_name)
        @dishes << dish_name
    end
end