# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Flat.destroy_all

puts "Creating flats..."

Flat.create!(
  name: "Light & Spacious Garden Flat London",
  address: "10 Clifton Gardens London W9 1DT",
  description: "A lovely summer feel for this spacious garden flat.",
  price_per_night: 75,
  number_of_guests: 3,
  picture_url: "https://images.unsplash.com/photo-1505691723518-36a5ac3b2a59"
)

Flat.create!(
  name: "Stylish House Close to River Thames",
  address: "5 Queensmill Road London SW6 6JP",
  description: "Two double bedrooms, open plan living area.",
  price_per_night: 65,
  number_of_guests: 2,
  picture_url: "https://images.unsplash.com/photo-1494526585095-c41746248156"
)

Flat.create!(
  name: "St Pancras Clock Tower Guest Suite",
  address: "Euston Rd London N1C 4QP",
  description: "Unique stay with amazing views.",
  price_per_night: 110,
  number_of_guests: 2,
  picture_url: "https://images.unsplash.com/photo-1522708323590-d24dbb6b0267"
)

Flat.create!(
  name: "Cozy Studio Near Hyde Park",
  address: "12 Bayswater London W2",
  description: "Perfect for couples, close to everything.",
  price_per_night: 90,
  number_of_guests: 2,
  picture_url: "https://images.unsplash.com/photo-1501183638710-841dd1904471"
)

puts "Done!"
