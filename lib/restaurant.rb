class Restaurant
    attr_reader :dishes,
                :name,
                :opening_time

  def initialize(opening_time, name)
    @dishes = []
    @name = name
    @opening_time = opening_time
  end

  def closing_time(hours)
    closing_time = @opening_time.chars[0, @opening_time.index(":")].join.to_i + hours
    return "#{closing_time}:00"
  end

end