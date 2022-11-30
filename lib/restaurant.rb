class Restaurant
  attr_reader :opening_time, :name, :dishes, :capitalized_dish_names
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    @capitalized_dish_names = []
  end

  def closing_time(hours)
    time = @opening_time.to_i + hours
    "#{time}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    if @opening_time.to_i >= 10 && @opening_time.to_i <= 15
        true
    else
        false
    end
  end

  def menu_dish_names 
    @dishes
    capitalized_dish_names = []
    @dishes.each do |name|
        capitalized_dish_names << name.upcase
    end
    p capitalized_dish_names
  end

  def announce_closing_time(closed)
    self.closing_time
    p "#{@name} will be closing at #{time}"

  end
end