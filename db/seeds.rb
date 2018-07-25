
puts "Wiping database clean"
Flat.destroy_all

puts "Adding new listings"
4.times do
  Flat.create!(
  name: Faker::HeyArnold.location,
  address: Faker::Address.street_address,
  description: Faker::Seinfeld.quote,
  price_per_night: (0..100).to_a.sample,
  number_of_guests: (0..4).to_a.sample
)
end

puts "Added 4 new listings"
