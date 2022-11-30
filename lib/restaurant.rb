class Restaurant
    attr_reader :name, :opening_time, :dishes, :closing_time
    
    def initialize(opening_time, name)
        @opening_time = opening_time
        @name = name
        @dishes = []
        @time = 0

    end

    def closing_time()
        @time 
       
    end

    
end