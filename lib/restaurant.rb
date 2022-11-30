class Restaurant
  attr_reader :name, :opening_time, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name 
    @dishes = []
  end

  def closing_time(hours)
    closing = @opening_time.to_i
    closing_hours = closing + hours
    "#{closing_hours}:00"
  end
end