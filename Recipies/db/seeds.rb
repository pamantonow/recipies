# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@ingredient = Ingredient.create(name: "Spaghetti", description: "one pound", food_group: "Grains")
Recipe.create(name: "Carbonara Pasta", description: "Spring best italian dish",instructions: "Boiled the water for 30 min, then add the pasta", ingredient: @ingredient)