class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name, dishes = [])
    @opening_time = opening_time
    @name = name
    @dishes = dishes
  end

  def closing_time(hours)
    close = @opening_time.to_i + hours
    return "#{close}:00"
  end

end