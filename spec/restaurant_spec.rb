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
    it 'is open for lunch' do
      restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
      restaurant2 = Restaurant.new('16:00', 'I1 Posto')

      expect(restaurant1.open_for_lunch?).to eq(true)
      expect(restaurant2.open_for_lunch?).to eq(false)
    end

    it 'can add dishes' do
      restaurant2 = Restaurant.new('16:00', 'I1 Posto')

      restaurant2.add_dish('Burrata')
      restaurant2.add_dish('Pizzetta')
      restaurant2.add_dish('Ravioli')

      expect(restaurant2.dishes).to eq(['Burrata', 'Pizzetta', 'Ravioli'])
    end

    it 'can return an all-caps menu array/list' do
      restaurant2 = Restaurant.new('16:00', 'I1 Posto')

      restaurant2.add_dish('Burrata')
      restaurant2.add_dish('Pizzetta')
      restaurant2.add_dish('Ravioli')

      expect(restaurant2.menu_dish_names).to eq(['BURRATA', 'PIZZETTA', 'RAVIOLI'])
    end
  end

  describe 'Iteration 4' do
    it 'Exists and has attributes' do
      restaurant1 = Restaurant.new('6:00', 'Fuel Cafe')
      restaurant2 = Restaurant.new('16:00', 'I1 Posto')

      expect(restaurant1).to be_a(Restaurant)
      expect(restaurant2).to be_a(Restaurant)

      expect(restaurant1.announce_closing_time(5)).to eq('Fuel Cafe will be closing at 11:00AM')
      expect(restaurant2.announce_closing_time(7)).to eq('I1 Posto will be closing at 11:00PM')
    end
  end
end
