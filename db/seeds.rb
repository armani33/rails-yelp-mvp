Restaurant.destroy_all

puts "create 15 fakes restaurant"
15.times do
  restaurant = Restaurant.new({
    name: Faker::GameOfThrones.house,
    address: Faker::GameOfThrones.city,
    phone: Faker::PhoneNumber.cell_phone,
    category: Restaurant::CATEGORIES.sample,
    }
  )
  restaurant.save!
end
