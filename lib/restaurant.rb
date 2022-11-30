class Restaurant
    attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    
  end

  def closing_time(hours_of_op)
    open_int = opening_time.to_i
    closed = open_int + hours_of_op
    "#{closed}:00"
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

  def menu_dish_names
    menu = []
    @dishes.each do |dish|
        menu << dish.upcase
        end
    menu
    end
end