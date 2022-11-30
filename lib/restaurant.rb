class Restaurant
    attr_reader :opening_time, :name, :dishes, :closing_time
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    end
end

def closing_time(closing_time)
    @closing_time = "#{1 + closing_time.to_s}:00"
end