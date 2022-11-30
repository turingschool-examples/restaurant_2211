class Restaurant
    attr_reader :opening_time, :name, :dishes, :closing_time, :add_dish, :open_for_lunch, :menu_dish_names
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    @menu_dish_names = []
  end

  def closing_time(hours_open)
   "#{opening_time.to_i + hours_open}:00"
  end

  def add_dish(dish)
    @dishes << dish
    @menu_dish_names << dish.upcase
  end

  def open_for_lunch?
    opening_time < '16:00'
  end

  def announce_closing_time(hours_open)
    if closing_time > 12
    closing_time -= 12
    end
  end
end