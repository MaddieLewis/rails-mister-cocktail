# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying all seeds ..."
Cocktail.destroy_all
Ingredient.destroy_all


puts "seeding ingredients ..."

lemon = 'https://images.pexels.com/photos/1536871/pexels-photo-1536871.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'
ice = 'https://images.pexels.com/photos/579216/pexels-photo-579216.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'
mint = 'https://images.pexels.com/photos/1132718/pexels-photo-1132718.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'

Ingredient.create(name: "Lemon", photo: lemon)
Ingredient.create(name: "Ice", photo: ice)
Ingredient.create(name: "Mint leaves", photo: mint)

puts "seeding cocktails"

drinks = 'https://c.pxhere.com/photos/57/3f/cups_bar_madrid_drink_cocktail-1324163.jpg!d'
beach = 'https://cdn.pixabay.com/photo/2013/02/21/19/06/beach-84533_1280.jpg'
mojito = 'https://cdn.pixabay.com/photo/2016/06/29/17/14/water-1487304_1280.jpg'

Cocktail.create(name: "Dark and Stormy", photo: drinks)
Cocktail.create(name: "Mojito", photo: mojito)
Cocktail.create(name: "Pina colada", photo: beach)
