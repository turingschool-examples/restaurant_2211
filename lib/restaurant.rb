class Restaurant
attr_reader :name, :opening_time, :dishes, :closing_time

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_after_opening_time)
    @opening_time += hours_after_opening_time
  end

  def add_dish(dish)
    @dishes << dish
  end
  
end