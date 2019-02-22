require 'json'
require 'open-uri'

puts 'Cleaning database...'
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

cocktail_url = open(url).read
ingredients = JSON.parse(cocktail_url)

ingredients['drinks'].each do |i|
  name = i["strIngredient1"]
  Ingredient.create(name: name)
end

puts 'Done'
