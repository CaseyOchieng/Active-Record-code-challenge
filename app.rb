# app/models/user.rb
class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews
  end
  
  # app/models/product.rb
  class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    
    def self.print_all
      all.each do |product|
        puts "Product: #{product.name}"
        puts "Reviews:"
        product.reviews.each do |review|
          puts "  #{review.user.name} - #{review.star_rating} stars: #{review.comment}"
        end
        puts ""
      end
    end
    
    def leave_review(user, star_rating, comment)
      Review.create(user: user, product: self, star_rating: star_rating, comment: comment)
    end
    
    def average_rating
      reviews.average(:star_rating)
    end
  end
  
  # app/models/review.rb
  class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product
    
    def print_review
      puts "Review for #{product.name} by #{user.name}: #{star_rating}. #{comment}"
    end
  end

  $ rails generate migration create_reviews star_rating:integer comment:string user:references product:references
  $ rails db:migrate

  # db/seeds.rb
user1 = User.create(name: "John")
user2 = User.create(name: "Jane")

product1 = Product.create(name: "Product 1")
product2 = Product.create(name: "Product 2")

product1.leave_review(user1, 4, "Great product!")
product1.leave_review(user2, 5, "Amazing product!")
product2.leave_review(user1, 2, "Not impressed.")
