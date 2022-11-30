class Restaurant
    attr_reader :time, :name

  def initialize(time, name)
    @opening_time = time
    @name = name
    end

end