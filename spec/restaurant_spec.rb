require 'rspec'
require 'pry'
require './lib/restaurant'

RSpec.describe Restaurant do
  describe 'Iteration 1' do
    it 'exists and has attributes' do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      expect(restaurant).to be_a(Restaurant)
      expect(restaurant.opening_time).to eq('10:00')
      expect(restaurant.name).to eq('Fuel Cafe')
    end

    it 'has a new opening time' do
      restaurant = Restaurant.new('11:30', 'Fuel Cafe')
      expect(restaurant).to be_a(Restaurant)
      expect(restaurant.opening_time).to eq('11:30')
      expect(restaurant.name).to eq('Fuel Cafe')
    end

    it 'starts with an empty array of dishes' do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      expect(restaurant.dishes).to eq([])
    end

  end

  describe 'Iteration 2' do
    it 'exists and has attributes restaurant1' do
      restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
      expect(restaurant1).to be_a(Restaurant)
    end

    it 'exists and has attributes restaurant2' do
      restaurant2 = Restaurant.new('16:00', 'Il Poggio')
      expect(restaurant2).to be_a(Restaurant)
    end

    xit 'returns closing time' do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      expect(restaurant.closing_time(8)).to eq("18:00")
    end

    xit 'returns closing time' do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      @restaurant1.add_dish('Burrata')
      @restaurant1.add_dish('Pizzetta')
      @restaurant1.add_dish('Ravioli')

      expect(@restaurant1.dishes).to eq(['Burrata', 'Pizzetta', 'Ravioli'])
    end

    xit 'can add dishes' do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      
      restaurant.add_dish('Burrata')
      restaurant.add_dish('Pizzetta')
      restaurant.add_dish('Ravioli')

      expect(restaurant.dishes).to eq(['Burrata', 'Pizzetta', 'Ravioli'])
    end
  end
end
