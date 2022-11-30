class Restaurant
    attr_reader :opening_time, :name, :dishes, :closing_time
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    

  end

  def closing_time(hour)
    "#{opening_time.to_i + hour}:00"
  end

  def add_dish(dish)
    @dishes << dish 
  end

  def open_for_lunch
    @open_time.to_i < 12
  end

end