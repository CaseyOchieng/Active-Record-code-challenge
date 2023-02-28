require_relative '../config/environment'
puts "🌱 Seeding data..."

Product.destroy_all
User.destroy_all
Review.destroy_all


product1= Product.create(name: "Wheat")
product2= Product.create(name: "Beans")
product3= Product.create(name: "Maize")
product4= Product.create(name: "ugali")
product5= Product.create(name: "chapati")

user1 = User.create(name: "Casey")
user2 = User.create(name: "Grace")
user3 = User.create(name: "Eva")
user4 = User.create(name: "Marcos")
user5 = User.create(name: "Marylucy")


review = Review.create(
  comment: "work work work",
  star_rating: 20,
  product_id: product1.id,
  user_id: user1.id
)



puts " Done "