class Restaurant

    attr_reader :opening_time, 
                :name, 
                :dishes, 
                :closing_time
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    
  end

  def closing_time(hours)
    (@opening_time.to_i) + (hours) + ':00'
  end
require 'pry'; binding.pry
end