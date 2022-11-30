class Restaurant
    attr_reader :dishes,
                :name,
                :opening_time
                
  def initialize(opening_time, name)
    @dishes = []
    @name = name
    @opening_time = opening_time
  end
end