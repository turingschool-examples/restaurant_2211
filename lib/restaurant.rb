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
    elsif (opening_time.to_i * 100) > 1200  || ((opening_time.chars.last(2).join) != ("00"))
      false
    end
  end

  def menu_dish_names 
    @dishes.map do |dish| 
      dish.upcase 
    end
  end

  def announce_closing_time(hours)
    closing_time(hours) 
    format = Time.parse(closing_time(hours))
    closing_at = format.strftime('%I:%M%p')

    "#{@name} will be closing at #{closing_at}"
    
  end
end