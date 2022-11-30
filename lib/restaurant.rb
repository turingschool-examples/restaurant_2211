class Restaurant
attr_reader :name, :opening_time, :dishes, :closing_time

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_after_opening_time)
    new_time = @opening_time.chop.chop.chop.to_i + hours_after_opening_time
    return "#{new_time}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end
  
  def open_for_lunch?
    @opening_time.chop.chop.chop.to_i < 12
  end

  def menu_dish_names
    menu = []
    @dishes.each {|dish| menu << dish.upcase}
    return menu 
  end

  def announce_closing_time
    closing_time = @opening_time.chop.chop.chop.to_i + hours_after_opening_time

  end
end