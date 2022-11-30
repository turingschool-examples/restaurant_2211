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
    it 'checks if open for lunch' do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      expect(restaurant.open_for_lunch?).to eq(true)
    end

    it 'returns all caps menu dish names' do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      
      restaurant.add_dish('Burrata')
      restaurant.add_dish('Pizzetta')
      restaurant.add_dish('Ravioli')

      expect(restaurant.menu_dish_names).to eq(['BURRATA', 'PIZZETTA', 'RAVIOLI'])
    end

    it 'returns all caps menu dish names' do
      restaurant = Restaurant.new('10:00', 'Fuel Cafe')
      
      restaurant.add_dish('Burrata')
      restaurant.add_dish('Pizzetta')
      restaurant.add_dish('Ravioli')

      expect(restaurant.menu_dish_names).to eq(['BURRATA', 'PIZZETTA', 'RAVIOLI'])
    end
    
    it 'can announces closing time' do
      restaurant1 = Restaurant.new('6:00', 'Fuel Cafe')

      expect(restaurant1.announce_closing_time(5)).to eq("#{restaurant1.name} will be closing at 11:00AM")
      expect(restaurant1.announce_closing_time(10)).to eq("#{restaurant1.name} will be closing at 11:00PM")
     end
  end
end
