class Restaurant
  attr_reader :opening_time, :name, :dishes, :closing_time
            
    def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    @closing_time = closing_time
    end

    def add_dish(dishes)
        @dishes<<dishes
    end
    
    def open_for_lunch?
        opening_time == '10:00' or '11:00'
    end
end