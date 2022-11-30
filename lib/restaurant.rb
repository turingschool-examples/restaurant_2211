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

  def open_for_lunch?
    if opening_time.to_i < 12 then true
    else false
    end
  end 

  def menu_dish_names
    menu_dishes = []
    dishes.each do |dish|
        menu_dishes << dish.upcase
    end
    menu_dishes
  end

  def announce_closing_time(hours)
    closing_hours = opening_time.to_i + hours
    clock_closing_time = 
        if closing_hours > 12 then closing_hours - 12
        else closing_hours
        end
    am_pm =
        if closing_hours > 12 then "PM"
        else "AM"
        end
    "#{name} will be closing at #{clock_closing_time}:00#{am_pm}"
  end
end