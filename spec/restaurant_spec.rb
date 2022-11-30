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
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      expect(restaurant.closing_time(8)).to eq("18:00")

      # @restaurant1.add_dish('Burrata')
      # @restaurant1.add_dish('Pizzetta')
      # @restaurant1.add_dish('Ravioli')

      # expect(@restaurant1.dishes).to eq(['Burrata', 'Pizzetta', 'Ravioli'])
    end

    it 'can add dishes' do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      
      restaurant.add_dish('Burrata')
      restaurant.add_dish('Pizzetta')
      restaurant.add_dish('Ravioli')

      expect(restaurant.dishes).to eq(['Burrata', 'Pizzetta', 'Ravioli'])
    end
  end

  describe 'Iteration 3' do
    it '#open_for_lunch?' do

    restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
    restaurant2 = Restaurant.new('16:00', 'Il Posto')

    expect(restaurant1.open_for_lunch?).to be(true)
    expect(restaurant2.open_for_lunch?).to be(false)
  end
end


end