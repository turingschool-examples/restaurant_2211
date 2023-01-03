class Restaurant
    attr_reader :restaurant,
                :opening_time,
                :name

    def initialize(info)
        # @restaurant = restaurant
        @opening_time =info[:opening_time]
        @name = info[:name]
    end    
end