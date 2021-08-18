# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Cleaning all DB model
puts "Cleaning booking database..."
Booking.destroy_all
puts "Cleaning offer database..."
Offer.destroy_all
puts "Cleaning user database..."
User.destroy_all
puts "=============================="

# Create users
puts "Creating 4 users..."

file = URI.open('https://avatars.githubusercontent.com/u/85315784?v=4')
nathan = User.new(email: "nathan@lewagon.fr", password: "111111", first_name: "Nathan", last_name: "Nom1")
nathan.photo.attach(io: file, filename: 'avatar', content_type: 'image')
nathan.save

file = URI.open('https://avatars.githubusercontent.com/u/45171753?v=4')
luc = User.new(email: "luc@lewagon.fr", password: "222222", first_name: "Luc", last_name: "Nom2")
luc.photo.attach(io: file, filename: 'avatar', content_type: 'image')
luc.save

file = URI.open('https://avatars.githubusercontent.com/u/85166333?v=4')
christophe = User.new(email: "christophe@lewagon.fr", password: "333333", first_name: "Christophe", last_name: "Nom3")
christophe.photo.attach(io: file, filename: 'avatar', content_type: 'image')
christophe.save

file = URI.open('https://avatars.githubusercontent.com/u/80858493?v=4')
dany = User.new(email: "dany@lewagon.fr", password: "444444", first_name: "Dany", last_name: "Nom4")
dany.photo.attach(io: file, filename: 'avatar', content_type: 'image')
dany.save

puts "Congrats, 4 users was created!"
puts "=============================="


# Create offers
puts "Creating 4 offers..."
offer1 = { description: "Offer1 description seed", category: "front-end", title: "Dev front-end", price_per_day: 200, user: User.all[rand(0..3)] }
offer2 = { description: "Offer2 description seed", category: "front-end", title: "Dev front-end", price_per_day: 300, user: User.all[rand(0..3)] }
offer3 = { description: "Offer3 description seed", category: "back-end", title: "Dev back-end", price_per_day: 150, user: User.all[rand(0..3)] }
offer4 = { description: "Offer4 description seed", category: "back-end", title: "Dev back-end", price_per_day: 500, user: User.all[rand(0..3)] }
offer5 = { description: "Offer5 description seed", category: "ux-ui", title: "Dev UX/UI", price_per_day: 160, user: User.all[rand(0..3)] }
offer6 = { description: "Offer6 description seed", category: "ux-ui", title: "Dev UX/UI", price_per_day: 350, user: User.all[rand(0..3)] }

[ offer1, offer2, offer3, offer4, offer5, offer6 ].each do |attributes|
  offer = Offer.create!(attributes)
  puts "Created #{offer.title} assigned to #{offer.user.first_name}"
end

puts "Congrats, 4 offers with random user was created!"
puts "=============================="

#Create bookings

puts "Creating 6 bookings ..."
booking1 = { begin_date: 20210822, end_date: 20211206, user: User.all[rand(0..3)], offer: Offer.all[rand(0..5)] }
booking2 = { begin_date: 20210827, end_date: 20211105, user: User.all[rand(0..3)], offer: Offer.all[rand(0..5)] }
booking3 = { begin_date: 20210828, end_date: 20211203, user: User.all[rand(0..3)], offer: Offer.all[rand(0..5)] }
booking4 = { begin_date: 20210826, end_date: 20211128, user: User.all[rand(0..3)], offer: Offer.all[rand(0..5)] }
booking5 = { begin_date: 20210825, end_date: 20211125, user: User.all[rand(0..3)], offer: Offer.all[rand(0..5)] }
booking6 = { begin_date: 20210821, end_date: 20211105, user: User.all[rand(0..3)], offer: Offer.all[rand(0..5)] }

[booking1, booking2, booking3, booking4, booking5, booking6].each do |attributes|
  booking = Booking.create!(attributes)
  puts "Created #{booking.id} assigned to #{booking.user.first_name} and #{booking.offer.title}"
end

puts "Congrates, 6 bookings with random user and offer were created!"
puts "=============================="
