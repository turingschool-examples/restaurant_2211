class Restaurant

  attr_reader :dishes, :opening_time, :name
# Iteration 1
#   def initialize (dishes, opening_time, name)
#     @dishes = []
#     @opening_time = opening_time
#     @name = name
#   end

#Iteration 2
dishes = @dishes

def initialize (dishes, opening_time, name)
    @dishes = []
    @opening_time = opening_time
    @name = name
  end

  def closing_time(num)
    closing_time = opening_time + num
    closing_time.to_s
    return closing_time
  end

  
end