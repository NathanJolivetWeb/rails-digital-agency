# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Cleaning all DB model
puts "Cleaning user database..."
User.destroy_all
puts "Cleaning offer database..."
Offer.destroy_all
puts "Cleaning booking database..."
Booking.destroy_all
puts "=============================="

# Create users
puts "Creating 4 users..."
nathan = { email: "nathan@lewagon.fr", password: "111111", first_name: "Nathan", last_name: "Nom1" }
luc = { email: "luc@lewagon.fr", password: "222222", first_name: "Luc", last_name: "Nom2" }
christophe = { email: "christophe@lewagon.fr", password: "333333", first_name: "Christophe", last_name: "Nom3" }
dany = { email: "dany@lewagon.fr", password: "444444", first_name: "Dany", last_name: "Nom4" }

[ nathan, luc, christophe, dany ].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.first_name}"
end

puts "Congrats, 4 users was created!"
puts "=============================="


# Create offers
puts "Creating 4 offers..."
offer1 = { description: "Offer1 description seed", title: "Dev fullstack", price_per_day: 200, user: User.all[rand(0..3)] }
offer2 = { description: "Offer2 description seed", title: "Dev front", price_per_day: 300, user: User.all[rand(0..3)] }
offer3 = { description: "Offer3 description seed", title: "Dev back", price_per_day: 150, user: User.all[rand(0..3)] }
offer4 = { description: "Offer4 description seed", title: "UI/UX", price_per_day: 500, user: User.all[rand(0..3)] }
offer5 = { description: "Offer5 description seed", title: "Dev fullstack", price_per_day: 160, user: User.all[rand(0..3)] }
offer6 = { description: "Offer6 description seed", title: "Product designer", price_per_day: 350, user: User.all[rand(0..3)] }

[ offer1, offer2, offer3, offer4, offer5, offer6 ].each do |attributes|
  offer = Offer.create!(attributes)
  puts "Created #{offer.title} assigned to #{offer.user.first_name}"
end

puts "Congrats, 4 offers with random user was created!"
puts "=============================="


