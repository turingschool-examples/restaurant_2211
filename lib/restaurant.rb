class Restaurant
attr_reader :name, :opening_time, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_after_opening_time)
    new_time = @opening_time.chop.chop.chop.to_i + hours_after_opening_time
    "#{new_time}:00"
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
    menu 
  end

  def announce_closing_time(hours_after_opening_time)
    closing_time = @opening_time.chop.chop.chop.to_i + hours_after_opening_time
    am_or_pm = 0
    closing_time >= 12 ? am_or_pm = "PM" : am_or_pm = "AM"
    closing_time > 12 ? closing_time = closing_time - 12 : closing_time

    "#{@name} will be closing at #{closing_time}:00#{am_or_pm}"
  end
end