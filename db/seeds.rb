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
puts "Creating some users..."

file = URI.open('https://avatars.githubusercontent.com/u/85315784?v=4')
nathan = User.new(email: "nathan@lewagon.fr", password: "111111", first_name: "Nathan", last_name: "Jolivet")
nathan.photo.attach(io: file, filename: 'avatar', content_type: 'image')
nathan.save

file = URI.open('https://avatars.githubusercontent.com/u/45171753?v=4')
luc = User.new(email: "luc@lewagon.fr", password: "222222", first_name: "Luc", last_name: "Broion")
luc.photo.attach(io: file, filename: 'avatar', content_type: 'image')
luc.save

file = URI.open('https://avatars.githubusercontent.com/u/85166333?v=4')
christophe = User.new(email: "christophe@lewagon.fr", password: "333333", first_name: "Christophe", last_name: "Becquey")
christophe.photo.attach(io: file, filename: 'avatar', content_type: 'image')
christophe.save

file = URI.open('https://avatars.githubusercontent.com/u/80858493?v=4')
dany = User.new(email: "dany@lewagon.fr", password: "444444", first_name: "Dany", last_name: "Renard")
dany.photo.attach(io: file, filename: 'avatar', content_type: 'image')
dany.save

file = URI.open('https://avatars.githubusercontent.com/u/86717984?v=4')
estelle = User.new(email: "estelle@lewagon.fr", password: "555555", first_name: "Estelle", last_name: "Dourthe")
estelle.photo.attach(io: file, filename: 'avatar', content_type: 'image')
estelle.save

file = URI.open('https://avatars.githubusercontent.com/u/86261099?v=4')
violette = User.new(email: "violette@lewagon.fr", password: "666666", first_name: "Violette", last_name: "Ruccio")
violette.photo.attach(io: file, filename: 'avatar', content_type: 'image')
violette.save

file = URI.open('https://avatars.githubusercontent.com/u/86805683?v=4')
maxence = User.new(email: "maxence@lewagon.fr", password: "777777", first_name: "Maxence", last_name: "Lerouge")
maxence.photo.attach(io: file, filename: 'avatar', content_type: 'image')
maxence.save

puts "Congrats, #{User.count} users was created!"
puts "=============================="


# Create offers
puts "Creating some offers..."
offer = { description: "Offer1 description seed", category: "front-end", title: "Dev front-end", price_per_day: 200, user: maxence }
offer1 = Offer.create(offer)
offer = { description: "Offer2 description seed", category: "front-end", title: "Dev front-end", price_per_day: 300, user: maxence }
offer2 = Offer.create(offer)
offer = { description: "Offer3 description seed", category: "back-end", title: "Dev back-end", price_per_day: 150, user: violette }
offer3 = Offer.create(offer)
offer = { description: "Offer4 description seed", category: "back-end", title: "Dev back-end", price_per_day: 500, user: violette }
offer4 = Offer.create(offer)
offer = { description: "Offer5 description seed", category: "ux-ui", title: "Dev UX/UI", price_per_day: 160, user: estelle }
offer5 = Offer.create(offer)
offer = { description: "Offer6 description seed", category: "ux-ui", title: "Dev UX/UI", price_per_day: 350, user: estelle }
offer6 = Offer.create(offer)
offer = { description: "Offer7 description seed", category: "ux-ui", title: "Dev UX/UI", price_per_day: 270, user: luc }
offer7 = Offer.create(offer)
offer = { description: "Offer8 description seed", category: "ux-ui", title: "Dev UX/UI", price_per_day: 318, user: luc }
offer8 = Offer.create(offer)
offer = { description: "Offer9 description seed", category: "ux-ui", title: "Dev UX/UI", price_per_day: 180, user: luc }
offer9 = Offer.create(offer)
offer = { description: "Offer10 description seed", category: "front-end", title: "Dev front-end", price_per_day: 650, user: nathan }
offer10 = Offer.create(offer)
offer = { description: "Offer11 description seed", category: "front-end", title: "Dev front-end", price_per_day: 400, user: nathan }
offer11 = Offer.create(offer)
offer = { description: "Offer12 description seed", category: "front-end", title: "Dev front-end", price_per_day: 200, user: dany }
offer12 = Offer.create(offer)
offer = { description: "Offer13 description seed", category: "back-end", title: "Dev back-end", price_per_day: 170, user: dany }
offer13 = Offer.create(offer)
offer = { description: "Offer14 description seed", category: "back-end", title: "Dev back-end", price_per_day: 587, user: christophe }
offer14 = Offer.create(offer)
offer = { description: "Offer15 description seed", category: "back-end", title: "Dev back-end", price_per_day: 666, user: christophe }
offer15 = Offer.create(offer)

puts "Congrats, #{Offer.count} offers with  user was created!"
puts "=============================="

#Create bookings

puts "Creating some bookings ..."
booking1 = { begin_date: 20210822, end_date: 20211206, user: maxence, offer: offer15 }
booking2 = { begin_date: 20210827, end_date: 20211105, user: maxence, offer: offer14 }
booking3 = { begin_date: 20210828, end_date: 20211203, user: violette, offer: offer13 }
booking4 = { begin_date: 20210826, end_date: 20211128, user: violette, offer: offer12 }
booking5 = { begin_date: 20210825, end_date: 20211125, user: estelle, offer: offer11 }
booking6 = { begin_date: 20210821, end_date: 20211105, user: estelle, offer: offer10 }
booking7 = { begin_date: 20210823, end_date: 20211103, user: luc, offer: offer9 }
booking8 = { begin_date: 20210824, end_date: 20211102, user: luc, offer: offer8 }
booking9 = { begin_date: 20210821, end_date: 20211110, user: nathan, offer: offer7 }
booking10 = { begin_date: 20210920, end_date: 20211112, user: nathan, offer: offer6 }
booking11 = { begin_date: 20210828, end_date: 20211113, user: dany, offer: offer5 }
booking12 = { begin_date: 20210829, end_date: 20211115, user: dany, offer: offer4 }
booking13 = { begin_date: 20210830, end_date: 20211120, user: christophe, offer: offer3 }
booking14 = { begin_date: 20210831, end_date: 20211112, user: christophe, offer: offer2 }
booking15 = { begin_date: 20210825, end_date: 20211116, user: christophe, offer: offer1 }

[booking1, booking2, booking3, booking4, booking5, booking6, booking7, booking8, booking9, booking10, booking11, booking12, booking13, booking14, booking15].each do |attributes|
  booking = Booking.create!(attributes)
  puts "Created #{booking.id} assigned to #{booking.user.first_name} and #{booking.offer.title}"
end

puts "Congrates, #{Booking.count} bookings with random user and offer were created!"
puts "=============================="
