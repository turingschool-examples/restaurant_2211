class Restaurant
    attr_reader :opening_time,
                :name,
                :dishes
  def initialize (opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end 

  def closing_time(hours)
    closing_hours = opening_time.to_i + hours
    return "#{closing_hours}:00"
  end

  def add_dish(dish)
    dishes << dish
  end
end