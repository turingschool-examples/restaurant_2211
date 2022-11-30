class Restaurant
    attr_reader :opening_time, :name, :dishes, :closing_time, :add_dish

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_open)
    sum = opening_time.to_i + hours_open 
    "#{sum.to_s}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    if opening_time.to_i < 12
        true
    else
        false
    end
  end


end