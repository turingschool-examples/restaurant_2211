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
            
end