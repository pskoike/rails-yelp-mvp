# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
restaurant = Restaurant.new
restaurant.name = "Japa Rest"
restaurant.address = "Fradique Coutinho, 90"
restaurant.phone_number = "1155555-00001"
restaurant.category = "japanese"
restaurant.save

restaurant = Restaurant.new
restaurant.name = "Italian Rest"
restaurant.address = "Mourato Coleho, 100"
restaurant.phone_number = "1155555-00002"
restaurant.category = "italian"
restaurant.save

restaurant = Restaurant.new
restaurant.name = "Chinese Rest"
restaurant.address = "Cardoso de Almeida, 1310"
restaurant.phone_number = "1155555-00003"
restaurant.category = "chinese"
restaurant.save

restaurant = Restaurant.new
restaurant.name = "French Rest"
restaurant.address = "Av Paulista, 920"
restaurant.phone_number = "1155555-00004"
restaurant.category = "french"
restaurant.save

restaurant = Restaurant.new
restaurant.name = "Belgin Rest"
restaurant.address = "Vergueiro, 9330"
restaurant.phone_number = "1155555-00055"
restaurant.category = "belgian"
restaurant.save

review = Review.new
review.content = 'Muito bom!'
review.rating =  3
review.restaurant = Restaurant.find(1)
review.save

review = Review.new
review.content = 'Muito bom!'
review.rating =  3
review.restaurant = Restaurant.find(2)
review.save

review = Review.new
review.content = 'Maravilhoso!'
review.rating =  5
review.restaurant = Restaurant.find(3)
review.save

review = Review.new
review.content = 'Muito ruim!'
review.rating =  1
review.restaurant = Restaurant.find(4)
review.save

review = Review.new
review.content = 'Não gostei'
review.rating =  2
review.restaurant = Restaurant.find(5)
review.save


#
# # db/seeds.rb
# puts 'Cleaning database...'
# Restaurant.destroy_all
#
# puts 'Creating restaurants...'
# restaurants_attributes = [
#   {
#     name:         "Epicure au Bristol",
#     address:      "112 rue du Fg St-Honoré 75008 Paris",
#     description:  "Face au jardin, on découvre une salle lumineuse... et la cuisine d'Éric Frechon.",
#     stars:        3
#   },
#   {
#     name:         "La truffière",
#     address:      "4 rue Blainville 75005 Paris",
#     description:  "Une valeur sûre que cette belle maison du 17e et les recettes de Jean-Christophe Rizet",
#     stars:        1
#   },
#   {
#     name:         "Le pré catelan",
#     address:      "route de Suresnes 75016 Paris",
#     description:  "Oeil vif, geste sûr: impossible de distinguer, dans les créations de Frédéric Anton...",
#     stars:        3
#   }
# ]
# Restaurant.create!(restaurants_attributes)
# puts 'Finished!'
