
class Restaurant
    attr_reader :opening_time,
                :name, 
                :dishes
                :name_of_dish

    def initialize(opening_time, name)
        @opening_time = opening_time
        @name = name  
        @dishes = []
    end 

    def closing_time(time)
        integer = opening_time.delete(":")
        time_as_s = integer.chomp('00')
        time_as_i = time_as_s.to_i
        closing_time = time_as_i+time 
        closing_time_s = closing_time.to_s
        return closing_time_s.concat(":00")

    end 

    def add_dish(name_of_dish)
        @name_of_dish = name_of_dish
        @dishes << name_of_dish
    end 
end