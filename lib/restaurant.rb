class Restaurant
    attr_reader :restaurant,
                :opening_time,
                :name

    def initialize(restaurant)
        @restaurant = restaurant
        @opening_time =[]
        @name = []
    end    
end