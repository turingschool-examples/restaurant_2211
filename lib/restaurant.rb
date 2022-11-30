class Restaurant
    attr_reader :opening_time, :name, :dishes
    def initialize(opening_time, name)
        @opening_time = opening_time
        @name = name
        @dishes = []
    
    end

    def closing_time(time)
        (10 + time).to_s + ":00"

    end
  
end