class Restaurant

  attr_reader :dishes, :opening_time, :name

  def initialize (dishes, opening_time, name)
    @dishes = []
    @opening_time = opening_time
    @name = name
  end
end