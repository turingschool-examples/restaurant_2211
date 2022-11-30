require 'rspec'
require 'pry'
require './lib/restaurant'

RSpec.describe Restaurant do
  describe 'Iteration 1' do
    it 'Exists and has attributes' do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')

      expect(restaurant).to be_a(Restaurant)
      expect(restaurant.opening_time).to eq('10:00')
      expect(restaurant.name).to eq('Fuel Cafe')
    end

    it 'Starts with an empty array of dishes' do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')

      expect(restaurant.dishes).to eq([])
    end
  end

  describe 'Iteration 2' do
    # The `closing_time` method should add the number of hours sent in the argument to the `opening_time` and return the time in 24 hour format.  For example, 3:00 PM (12hour / clock time) is 15:00 (24hour). A restaurant will only ever open at the top of the hour (:00).
    it 'returns closing time' do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')

      expect(restaurant.closing_time(8)).to eq("18:00")
    end
      restaurant1 = Restaurant.new
      @restaurant1.add_dish('Burrata')
      @restaurant1.add_dish('Pizzetta')
      @restaurant1.add_dish('Ravioli')

      expect(@restaurant1.dishes).to eq(['Burrata', 'Pizzetta', 'Ravioli'])
    end

    it 'can add dishes' do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      
      restaurant.add_dish('Burrata')
      restaurant.add_dish('Pizzetta')
      restaurant.add_dish('Ravioli')

      expect(restaurant.dishes).to eq(['Burrata', 'Pizzetta', 'Ravioli'])
    end
  end
'Iteration 3'
  # A restaurant is open for lunch, if its opening time is before 12:00.  All restaurants are **VERY** excited about their dishes - The method `menu_dish_names` will return a list of dish names, **IN ALL CAPS** ('Breakfast Burrito' should become 'BREAKFAST BURRITO').

  xit 
