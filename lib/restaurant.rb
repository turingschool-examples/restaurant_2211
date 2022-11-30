class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_open)
    (@opening_time.to_i + hours_open).to_s.concat(":00")
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    @opening_time.to_i < 12 ? true : false
  end

  def menu_dish_names
    @dishes.map { |dish| dish.upcase }
  end

  def announce_closing_time(hours_open)
    if (@opening_time.to_i + hours_open) < 12
      "#{self.name} will be closing at #{(@opening_time.to_i + hours_open).to_s.concat(":00")}AM"
    else 
      "#{self.name} will be closing at #{((@opening_time.to_i + hours_open)-12).to_s.concat(":00")}PM"
    end
  end

end