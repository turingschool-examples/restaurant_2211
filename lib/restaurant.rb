require 'time'

class Restaurant
  attr_reader :name, :opening_time, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name 
    @dishes = []
  end

  def closing_time(hours)
    opening_to_int = @opening_time.to_i
    closing_hours = opening_to_int + hours
    opening_to_string = closing_hours.to_s
    pattern = "%H:%M"
    format = Time.parse(opening_to_string + ":00")
    format.strftime('%H:%M')
  end

  def add_dish(new_dish)
    @dishes << new_dish
  end

  def open_for_lunch? 
    if (opening_time.to_i * 100) < 1200 
      true
    else 
      false
    end
  end
end