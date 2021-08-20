# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ascii art

puts "
▓█████▄  ██▓  ▄████  ██▓▄▄▄█████▓ ▄▄▄       ██▓        ▄▄▄        ▄████ ▓█████  ███▄    █  ▄████▄▓██   ██▓
▒██▀ ██▌▓██▒ ██▒ ▀█▒▓██▒▓  ██▒ ▓▒▒████▄    ▓██▒       ▒████▄     ██▒ ▀█▒▓█   ▀  ██ ▀█   █ ▒██▀ ▀█ ▒██  ██▒
░██   █▌▒██▒▒██░▄▄▄░▒██▒▒ ▓██░ ▒░▒██  ▀█▄  ▒██░       ▒██  ▀█▄  ▒██░▄▄▄░▒███   ▓██  ▀█ ██▒▒▓█    ▄ ▒██ ██░
░▓█▄   ▌░██░░▓█  ██▓░██░░ ▓██▓ ░ ░██▄▄▄▄██ ▒██░       ░██▄▄▄▄██ ░▓█  ██▓▒▓█  ▄ ▓██▒  ▐▌██▒▒▓▓▄ ▄██▒░ ▐██▓░
░▒████▓ ░██░░▒▓███▀▒░██░  ▒██▒ ░  ▓█   ▓██▒░██████▒    ▓█   ▓██▒░▒▓███▀▒░▒████▒▒██░   ▓██░▒ ▓███▀ ░░ ██▒▓░
 ▒▒▓  ▒ ░▓   ░▒   ▒ ░▓    ▒ ░░    ▒▒   ▓▒█░░ ▒░▓  ░    ▒▒   ▓▒█░ ░▒   ▒ ░░ ▒░ ░░ ▒░   ▒ ▒ ░ ░▒ ▒  ░ ██▒▒▒ 
 ░ ▒  ▒  ▒ ░  ░   ░  ▒ ░    ░      ▒   ▒▒ ░░ ░ ▒  ░     ▒   ▒▒ ░  ░   ░  ░ ░  ░░ ░░   ░ ▒░  ░  ▒  ▓██ ░▒░ 
 ░ ░  ░  ▒ ░░ ░   ░  ▒ ░  ░        ░   ▒     ░ ░        ░   ▒   ░ ░   ░    ░      ░   ░ ░ ░       ▒ ▒ ░░  
   ░     ░        ░  ░                 ░  ░    ░  ░         ░  ░      ░    ░  ░         ░ ░ ░     ░ ░     
 ░                                                                                        ░       ░ ░     
"

# Cleaning all DB model
puts "Cleaning booking database..."
Booking.destroy_all
puts "Cleaning offer database..."
Offer.destroy_all
puts "Cleaning review database..."
Review.destroy_all
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
offer = { description: "Fraichement sortis du Wagon, disponible et passionné", category: "front-end", title: "Dev Front-end", price_per_day: 200, user: maxence, langage1: "Ruby", level1: 3, langage2: "Python", level2: 2  }
offer1 = Offer.create(offer)
offer = { description: "Fraichement sortis du Wagon, disponible et passionné", category: "back-end", title: "Dev Back-end", price_per_day: 300, user: maxence, langage1: "Ruby" , level1: 2 , langage2: "Python", level2: 2 }
offer2 = Offer.create(offer)
offer = { description: "Etudiante au Wagon Lille, le code est ma passion", category: "back-end", title: "Dev Back-end", price_per_day: 150, user: violette, langage1: "Ruby" , level1: 3, langage2: "Python", level2: 1 }
offer3 = Offer.create(offer)
offer = { description: "Etudiante au Wagon Lille, le code est ma passion", category: "front-end", title: "Dev Front-end", price_per_day: 500, user: violette, langage1: "Python" , level1: 3, langage2: "Ruby", level2: 2  }
offer4 = Offer.create(offer)
offer = { description: "Les navbars sont ma passion. Ex-étudiante le Wagon Lille", category: "front-end", title: "Dev Front-end", price_per_day: 160, user: estelle, langage1: "Ruby" , level1: 2, langage2: "Python", level2: 1 }
offer5 = Offer.create(offer)
offer = { description: "Les navbars sont ma passion. Ex-étudiante le Wagon Lille", category: "ux-ui", title: "Dev UX/UI", price_per_day: 350, user: estelle, langage1: "Ruby" , level1: 2 , langage2: "Python", level2: 2 }
offer6 = Offer.create(offer)
offer = { description: "J'ai étudié au Wagon Lille, je code tout en tout", category: "ux-ui", title: "Dev UX/UI", price_per_day: 270, user: luc, langage1: "Python" , level1: 3, langage2: "Ruby", level2: 3}
offer7 = Offer.create(offer)
offer = { description: "J'ai étudié au Wagon Lille, je code tout en tout", category: "back-end", title: "Dev Back-end", price_per_day: 318, user: luc, langage1: "Ruby" , level1: 2 , langage2: "Python", level2: 2 }
offer8 = Offer.create(offer)
offer = { description: "J'ai étudié au Wagon Lille, je code tout en tout", category: "front-end", title: "Dev Front-end", price_per_day: 180, user: luc, langage1: "Ruby" , level1: 2, langage2: "Python", level2: 2 }
offer9 = Offer.create(offer)
offer = { description: "J'aime le code comme le Wagon, pro du front et expert du back", category: "front-end", title: "Dev Front-end", price_per_day: 650, user: nathan, langage1: "Python" , level1: 3, langage2: "Ruby", level2: 1 }
offer10 = Offer.create(offer)
offer = { description: "J'aime le code comme le Wagon, pro du front et expert du back", category: "back-end", title: "Dev Back-end", price_per_day: 400, user: nathan, langage1: "Ruby" , level1: 2 , langage2: "Python", level2: 2 }
offer11 = Offer.create(offer)
offer = { description: "Développeur Web, bootcamp le Wagon Lille, jeune et dynamique", category: "back-end", title: "Dev Back-end", price_per_day: 200, user: dany, langage1: "Python" , level1: 3, langage2: "Ruby", level2: 3 }
offer12 = Offer.create(offer)
offer = { description: "Développeur Web, bootcamp le Wagon Lille, jeune et dynamique", category: "front-end", title: "Dev Front-end", price_per_day: 170, user: dany, langage1: "Ruby" , level1: 2 , langage2: "Python", level2: 1 }
offer13 = Offer.create(offer)
offer = { description: "Développeur web, bootcamp le Wagon Lille, disponible et frais", category: "front-end", title: "Dev Front-end", price_per_day: 587, user: christophe, langage1: "Python" , level1: 2, langage2: "Ruby", level2: 2 }
offer14 = Offer.create(offer)
offer = { description: "Développeur web, bootcamp le Wagon Lille, disponible et frais", category: "back-end", title: "Dev Back-end", price_per_day: 666, user: christophe, langage1: "Ruby" , level1: 2 , langage2: "Python", level2: 1}
offer15 = Offer.create(offer)

puts "Congrats, #{Offer.count} offers with  user was created!"
puts "=============================="

#Create bookings

puts "Creating some bookings ..."
booking = { begin_date: 20210822, end_date: 20210906, user: maxence, offer: offer15 }
booking1 = Booking.create(booking)
booking = { begin_date: 20210827, end_date: 20210905, user: maxence, offer: offer14 }
booking2 = Booking.create(booking)
booking = { begin_date: 20210828, end_date: 20210903, user: violette, offer: offer13 }
booking3 = Booking.create(booking)
booking = { begin_date: 20210826, end_date: 20210928, user: violette, offer: offer12 }
booking4 = Booking.create(booking)
booking = { begin_date: 20210825, end_date: 20210925, user: estelle, offer: offer11 }
booking5 = Booking.create(booking)
booking = { begin_date: 20210821, end_date: 20210905, user: estelle, offer: offer10 }
booking6 = Booking.create(booking)
booking = { begin_date: 20210823, end_date: 20210903, user: luc, offer: offer9 }
booking7 = Booking.create(booking)
booking = { begin_date: 20210824, end_date: 20210902, user: luc, offer: offer8 }
booking8 = Booking.create(booking)
booking = { begin_date: 20210821, end_date: 20210910, user: nathan, offer: offer7 }
booking9 = Booking.create(booking)
booking = { begin_date: 20210920, end_date: 20210922, user: nathan, offer: offer6 }
booking10 = Booking.create(booking)
booking = { begin_date: 20210828, end_date: 20210913, user: dany, offer: offer5 }
booking11 = Booking.create(booking)
booking = { begin_date: 20210829, end_date: 20210915, user: dany, offer: offer4 }
booking12 = Booking.create(booking)
booking = { begin_date: 20210830, end_date: 20210920, user: christophe, offer: offer3 }
booking13 = Booking.create(booking)
booking = { begin_date: 20210831, end_date: 20210912, user: christophe, offer: offer2 }
booking14 = Booking.create(booking)
booking = { begin_date: 20210825, end_date: 20210916, user: christophe, offer: offer1 }
booking15 = Booking.create(booking)

puts "Congrates, #{Booking.count} bookings with random user and offer were created!"
puts "=============================="

# Create reviews
puts "Creating some reviews ..."
review1 = { content: "Very professinal, timing ok, recommended", rating: 4, booking: booking15 }
review2 = { content: "Not the best but still good", rating: 3, booking: booking14 }
review3 = { content: "Very professinal, timing ok, recommended", rating: 4, booking: booking13 }
review4 = { content: "Timing not respected, job just ok, not recommended", rating: 2, booking: booking12 }
review5 = { content: "Very professinal, timing ok, recommended", rating: 4, booking: booking11 }
review6 = { content: "Fast and Good, perfect, highly recommended", rating: 5, booking: booking10 }
review7 = { content: "Not the best but still good", rating: 3, booking: booking9 }
review8 = { content: "Look like a slug, slow and sticky", rating: 1, booking: booking8 }
review9 = { content: "Very professinal, timing ok, recommended", rating: 4, booking: booking7 }
review10 = { content: "Not the best but still good", rating: 3, booking: booking6 }
review11 = { content: "Timing not respected, job just ok, not recommended", rating: 2, booking: booking5 }
review12 = { content: "Timing not respected, job just ok, not recommended", rating: 2, booking: booking4 }
review13 = { content: "Not the best but still good", rating: 3, booking: booking3 }
review14 = { content: "Very professinal, timing ok, recommended", rating: 4, booking: booking2 }
review15 = { content: "Very professinal, timing ok, recommended", rating: 4, booking: booking1 }

[review1, review2, review3, review4, review5, review6, review7, review8, review9, review10, review11, review12, review13, review14, review15].each do |attributes|
  review = Review.create!(attributes)
end

puts "Created #{Review.count} reviews"
