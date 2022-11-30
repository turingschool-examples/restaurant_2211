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


end