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
  
end