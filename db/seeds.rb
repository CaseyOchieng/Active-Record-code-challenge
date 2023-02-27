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

user1 = User.create(name: "levy")
user2 = User.create(name: "niggo")
user3 = User.create(name: "bichwa")
user4 = User.create(name: "njiru")
user5 = User.create(name: "muguro")


review = Review.create(
  comment: "work work work",
  star_rating: 20,
  product_id: product1.id,
  user_id: user1.id
)



puts "🌱 Done seeding!"