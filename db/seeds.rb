# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Grocery.create(name: "bread", price: 5, quantity: 1, category: "grain")

Grocery.create(name: "carrot", price: 2, quantity: 6, category: "vegetable")

Grocery.create(name: "orange", price: 2, quantity: 6, category: "fruit")

Grocery.create(name: "pretzel", price: 3, quantity: 8, category: "grain")

Grocery.create(name: "yogurt", price: 2, quantity: 2, category: "dairy")

Grocery.create(name: "chicken", price: 6, quantity: 2, category: "poultry")

Grocery.create(name: "butter", price: 2, quantity: 1, category: "dairy")

Grocery.create(name: "cheese", price: 3, quantity: 1, category: "dairy")

Grocery.create(name: "chocolate", price: 4, quantity: 1, category: "sweets")
