class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes

  def initialize(opening_time,name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours)
    (@opening_time.to_i + hours).to_s + ':00'
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    @opening_time.to_i <= 12
  end

  def menu_dish_names
    @dishes.map do |dish|
      dish.upcase
    end
  end

  def announce_closing_time(hours)
    time = (@opening_time.to_i + hours).to_s + ':00'
      t = Time 
      if t = (0100..1200) 
        "#{@name} will be closing at #{time}AM"
      else t = (1201..1159)
        standard_t = t.subtract(12)
        "#{@name} will be closing at #{standard_t}PM"
      end
  end
end

# if time.to_i > 12
#   time.to_i - 12  time.to_s + 'PM'
# else
#   time.to_i < 12
#   time.to_i - 12  time.to_s + 'AM'