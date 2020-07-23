require "JSON"
require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts"star seed"
drinks =[]
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
user = JSON.parse(user_serialized)
user['drinks'].each do |drink|
  ingredient = Ingredient.new(name: drink.values)
  ingredient.save!
end

cocktail_a = Cocktail.new(name: "Mint Julep")
cocktail_b = Cocktail.new(name: "Whiskey Sour")
cocktail_c = Cocktail.new(name: "Mojito")

puts "finish seed"
