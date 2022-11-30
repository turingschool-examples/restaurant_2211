class Restaurant
    attr_reader :opening_time, :name

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
  end

#   def opening_time(time)
#     restaurant.opening_time
#   end

#   def name(restaurant_name)
#     restaurant.restaurant_name
#   end

end