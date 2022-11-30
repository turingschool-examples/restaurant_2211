class Restaurant
    attr_reader :opening_time, :name, :dishes, :closing_time, :add_dish
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_open)
   "#{opening_time.to_i + hours_open}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end
end