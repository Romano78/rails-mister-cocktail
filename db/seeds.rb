require 'open-uri'
require 'json'

p 'creating seed'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

serialized_object = open(url).read
object = JSON.parse(serialized_object)
object['drinks'].each do |ing|
  i = Ingredient.create(
    name: ing['strIngredient1']
  )

  puts "creating #{i}"
end

p 'finished'
