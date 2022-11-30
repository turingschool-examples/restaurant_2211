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
    it 'returns closing time' do
      restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
      restaurant2 = Restaurant.new('16:00', 'Il Poggio')
      expect(restaurant1.closing_time(8)).to eq("18:00")
      expect(restaurant2.closing_time(7)).to eq("23:00")

    end

    it 'can add dishes' do
      restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
      restaurant2 = Restaurant.new('16:00', 'Il Poggio')
      
      restaurant2.add_dish('Burrata')
      restaurant2.add_dish('Pizzetta')
      restaurant2.add_dish('Ravioli')

      expect(restaurant2.dishes).to eq(['Burrata', 'Pizzetta', 'Ravioli'])
    end
  end
end
