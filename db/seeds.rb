# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint_leaves = Ingredient.create(name: "mint leaves")
coconut = Ingredient.create(name: "coconut")

mojito = Cocktail.create(name: "mojito")
pina_colada = Cocktail.create(name: "pina colada")

Dose.create(cocktail: mojito, ingredient: lemon, description: "2 cl")
Dose.create(cocktail: pina_colada, ingredient: coconut, description: "2 cl")

puts 'Done'
