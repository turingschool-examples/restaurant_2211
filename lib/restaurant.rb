class Restaurant
    attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    @closing_time = []
    @menu_dish_names = []
    @open_for_lunch = []
    
  end

  def closing_time(hours)
    close_int = opening_time.to_i + hours
    @closing_time << close_int
  end

  def add_dish(dish)
    @dishes << dish
  end

  def menu_dish_names
    dishes.map do |dish|
        dish.upcase
    end
  end

  def open_for_lunch
    if @opening_time.to_i < 12
        @open_for_lunch = true
    else @open_for_lunch = false
    end
  end
end