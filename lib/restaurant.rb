class Restaurant
  
    def initialize(opening_time, name)
        @opening_time = opening_time
        @name = name
        @dishes = []
    end

    def opening_time
        @opening_time
    end

    def name
        @name
    end
    
    def dishes
        @dishes 
    end
    
    def closing_time(hours)
        (@opening_time.to_i + hours).to_s + ':00'
    end

    def add_dish(dish)
        @dishes << dish
    end

   #def open_for_lunch?
    #    if @opening_time <= "12:00"
     #       true
      #  else
       # end
    #end

end