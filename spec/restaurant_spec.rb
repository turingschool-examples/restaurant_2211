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

    describe "Iteration 3" do
      it 'open for lunch?' do
        restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
        restaurant2 = Restaurant.new('16:00', 'Il Posto')

        expect(restaurant1.open_for_lunch?).to eq(true)
        expect(restaurant2.open_for_lunch?).to eq(false)
      end

      it "adds dishes" do
        restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
        restaurant2 = Restaurant.new('16:00', 'Il Posto')

        restaurant2.add_dish('Burrata')
        restaurant2.add_dish('Pizzetta')
        restaurant2.add_dish('Ravioli')

        expect(restaurant2.menu_dish_names).to eq(["BURRATA", "PIZZETTA", "RAVIOLI"])
      end
    end

    describe "Iteration 3" do
      it 'announces closing time' do
        restaurant1 = Restaurant.new('6:00', 'Fuel Cafe')
        restaurant2 = Restaurant.new('16:00', 'Il Posto')

        restaurant1.announce_closing_time(5)
        restaurant2.announce_closing_time(7)

        expect(restaurant1.announce_closing_time).to eq("11:00")
        expect(restaurant2.announce_closing_time).to eq("23:00")
      end
    end
  end
end
