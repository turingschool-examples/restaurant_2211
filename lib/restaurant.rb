class Restaurant

    attr_reader :opening_time, 
                :name, 
                :dishes, 
                :closing_time
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    # require 'pry'; binding.pry

  end
  
  def closing_time(hours)
    "#{hours + @opening_time.chomp(':00').to_i}:00"
  end
  
  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    opening_hour = @opening_time.chomp(':00').to_i 
    if opening_hour < 12
      true
    else
      false
    end 
  end
  # require 'pry'; binding.pry
end