require 'faker'

10.times do
  restaurant = Restaurant.new(
    name: Faker::Cannabis.strain,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample,
  )
  restaurant.save!
end
