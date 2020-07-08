require 'open-uri'
require 'json'

puts "Taking out the trash..."

Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

puts "Fetching tasty ingredients..."

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
list = JSON.parse(open(url).read)["drinks"]
list.each do |drink|
  Ingredient.create(name: drink["strIngredient1"])
end

puts "Mixing our first cocktails..."

Cocktail.create(name: "Manhattan")
Cocktail.create(name: "Old Fashioned")
Cocktail.create(name: "Martini dry")

puts "That's a wrap!"