class Restaurant
    attr_reader :opening_time, :name, :dishes, :closing_time
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    end
end

def closing_time(hours)
    @closing_time = "#{hours + @opening_time.to_s}:00"
    
end

def add_dish(dish)
    @dishes << dish
end

def add_dish(dish)
    @dishes << dish
end
# require 'pry'; binding.pry

def menu_dish_names(dish)
    @opening_time < '12:00' 
end