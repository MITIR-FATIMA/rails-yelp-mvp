# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# puts "Cleaning database..."
# Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "07 58 58 58 78", category: "chinese" }
pite = {name: "Pite", address: "4 avenue chutes lavie", phone_number: "07 53 58 00 78", category: "italian" }
shawern = {name: "Shawern", address: "12 dododododo", phone_number: "06 33 56 58 78", category: "japanese" }
diess = {name: "Diess", address: "23 firjfjfkfkkd", phone_number: "06 58 88 66 78", category: "french" }
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "06 46 58 11 00", category: "belgian"}

[dishoom, pite, shawern, diess, pizza_east].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
