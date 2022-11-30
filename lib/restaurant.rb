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
end