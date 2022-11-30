class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name 
    @dishes = []
  end 

  def closing_time(closing_time)
    closed = @opening_time.to_i + closing_time
    "#{closed}:00"
  end 

  def add_dish(dish_name)
    @dishes << dish_name
  end 

end