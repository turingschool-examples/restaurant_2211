
class Restaurant
    attr_reader :opening_time,
                :name, 
                :dishes,
                :closing_time 

    def initialize(opening_time, name)
        @opening_time = opening_time
        @name = name  
        @dishes = []
    end 

    def closing_time(time)
        @closing_time = (((opening_time.to_i)+time).to_s).concat(":00")

    end 

    def add_dish(name_of_dish)
        @dishes << name_of_dish
        return @dishes 
    end 

    def open_for_lunch?
        if (@opening_time.to_i) < 12 
            true 
        else false
        end 
        
    end 

    def menu_dish_names
        menu_names = []
        @dishes.each do |dish|
            menu_names << dish.upcase
        end 
        return menu_names
    end 

end