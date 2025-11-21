# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Clear existing data
MenuItem.destroy_all
Category.destroy_all

# Create categories
drinks = Category.create!(name: "Drinks")
mains = Category.create!(name: "Main Dishes")
desserts = Category.create!(name: "Desserts")

# Create menu items
MenuItem.create!(name: "Coconut Water", price: 3.50, category: drinks)
MenuItem.create!(name: "Iced Coffee", price: 4.00, category: drinks)

MenuItem.create!(name: "BBQ Chicken", price: 10.99, category: mains)
MenuItem.create!(name: "Veggie Burger", price: 8.99, category: mains)

MenuItem.create!(name: "Chocolate Cake", price: 5.50, category: desserts)
MenuItem.create!(name: "Fruit Salad", price: 4.75, category: desserts)

puts "✅ Seeded #{Category.count} categories and #{MenuItem.count} menu items!"
