# Restaurants
# Reviews
Review.destroy_all
Restaurant.destroy_all


rest1 = Restaurant.new(name: "Madrid Special", address: "Madrid")
rest2 = Restaurant.new(name: "Ajax didn't really loose", address: "Amsterdam")
rest1.save!
rest2.save!

Review.create!(content: "Horrible game", restaurant: rest2)
Review.create!(content: "I'm Rado and I liked the game", restaurant: rest2)
