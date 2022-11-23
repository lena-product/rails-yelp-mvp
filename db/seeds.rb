# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "HongKong", address: "7 Boundary St, London E2 7JE", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
crepes = {name: "Le Wagon Crepes", address: "56A Eiffel Tower St, Paris E1 6PQ", category: "french"}
sushi = {name: "Sushi Express", address: "56A Shoreditch High St, Kioto E1 6PQ", category: "japanese"}
frikandel = {name: "Frikandel", address: "56A Shoreditch High St, Brussels E1 6PQ", category: "belgian"}

[dishoom, pizza_east, crepes, sushi, frikandel].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
