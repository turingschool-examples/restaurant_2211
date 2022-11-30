#### Iteration 1 
# require './lib/restaurant'

# restaurant = Restaurant.new('10:00', 'Fuel Cafe')
# puts restaurant

# puts restaurant.opening_time

# puts restaurant.name
# puts restaurant.dishes

###############################
#### Iteration 2
require './lib/restaurant'

restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
p restaurant1

restaurant2 = Restaurant.new('16:00', 'Il Poggio')
p restaurant2
puts

p restaurant1.closing_time(8)
puts

p restaurant2.closing_time(7)
puts

restaurant2.add_dish('Burrata')
restaurant2.add_dish('Pizzetta')
restaurant2.add_dish('Ravioli')

p restaurant2.dishes