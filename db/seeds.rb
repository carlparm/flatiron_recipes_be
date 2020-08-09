# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
RecipeIngredient.destroy_all

user1 = User.create(name: "Carl")
user2 = User.create(name: "Matt")
user3 = User.create(name: "Sunny")
user4 = User.create(name: "Andy")
user5 = User.create(name: "Sal")
user6 = User.create(name: "Taylor")
user7 = User.create(name: "Dani")
user8 = User.create(name: "Emily")

recipe1 = Recipe.create(name: "Toast", user_id: user1.id, hours: 0, minutes: 5, feeds: 1, directions: "Place bread in the toaster and toast to desired doneness. Then take out toasted bread and spred favorite jelly, jame, or just butter.")
recipe2 = Recipe.create(name: "Salad", user_id: user1.id, hours: 0, minutes: 5, feeds: 1, directions: "Chop up lettuce and add to a bowl. Cut cooked chicken into bit sized pieces and add to bowl. Drizzle ceaser dressing over top")
recipe3 = Recipe.create(name: "Pasta", user_id: user1.id, hours: 0, minutes: 10, feeds: 2, directions: "Bring water to a boil. Place pasta into water and cook for 8-10 minutes depending on desired doneness. Drain water from pasta and add pasta sauce")
recipe4 = Recipe.create(name: "Toast", user_id: user2.id, hours: 0, minutes: 5, feeds: 1, directions: "Place bread in the toaster and toast to desired doneness. Then take out toasted bread and spred favorite jelly, jame, or just butter.")
recipe5 = Recipe.create(name: "Salad", user_id: user2.id, hours: 0, minutes: 5, feeds: 1, directions: "Chop up lettuce and add to a bowl. Cut cooked chicken into bit sized pieces and add to bowl. Drizzle ceaser dressing over top")
recipe6 = Recipe.create(name: "Pasta", user_id: user2.id, hours: 0, minutes: 10, feeds: 2, directions: "Bring water to a boil. Place pasta into water and cook for 8-10 minutes depending on desired doneness. Drain water from pasta and add pasta sauce")
recipe7 = Recipe.create(name: "Toast", user_id: user3.id, hours: 0, minutes: 5, feeds: 1, directions: "Place bread in the toaster and toast to desired doneness. Then take out toasted bread and spred favorite jelly, jame, or just butter.")
recipe8 = Recipe.create(name: "Salad", user_id: user3.id, hours: 0, minutes: 5, feeds: 1, directions: "Chop up lettuce and add to a bowl. Cut cooked chicken into bit sized pieces and add to bowl. Drizzle ceaser dressing over top")
recipe9 = Recipe.create(name: "Pasta", user_id: user3.id, hours: 0, minutes: 10, feeds: 2, directions: "Bring water to a boil. Place pasta into water and cook for 8-10 minutes depending on desired doneness. Drain water from pasta and add pasta sauce")
recipe10 = Recipe.create(name: "Toast", user_id: user4.id, hours: 0, minutes: 5, feeds: 1, directions: "Place bread in the toaster and toast to desired doneness. Then take out toasted bread and spred favorite jelly, jame, or just butter.")
recipe11 = Recipe.create(name: "Salad", user_id: user4.id, hours: 0, minutes: 5, feeds: 1, directions: "Chop up lettuce and add to a bowl. Cut cooked chicken into bit sized pieces and add to bowl. Drizzle ceaser dressing over top")
recipe12 = Recipe.create(name: "Pasta", user_id: user4.id, hours: 0, minutes: 10, feeds: 2, directions: "Bring water to a boil. Place pasta into water and cook for 8-10 minutes depending on desired doneness. Drain water from pasta and add pasta sauce")

ingredient1 = Ingredient.create(name: "Bread", vegetarian: true, vegan: true, glutenfree: false)
ingredient2 = Ingredient.create(name: "Strawberry Jelly", vegetarian: true, vegan: false, glutenfree: true)
ingredient3 = Ingredient.create(name: "Lettuce", vegetarian: true, vegan: true, glutenfree: true)
ingredient4 = Ingredient.create(name: "Casear Dressing", vegetarian: true, vegan: false, glutenfree: true)
ingredient5 = Ingredient.create(name: "Chicken", vegetarian: false, vegan: false, glutenfree: true)
ingredient6 = Ingredient.create(name: "Parmesan Cheese", vegetarian: true, vegan: false, glutenfree: true)
ingredient7 = Ingredient.create(name: "Uncooked Pasta", vegetarian: true, vegan: false, glutenfree: false)
ingredient8 = Ingredient.create(name: "Pasta Sauce", vegetarian: true, vegan: true, glutenfree: true)

recipe_ingredient1 = RecipeIngredient.create(ingredient_id: ingredient1.id, recipe_id: recipe1.id, amount: 1, measurement: "Slice")
recipe_ingredient2 = RecipeIngredient.create(ingredient_id: ingredient2.id, recipe_id: recipe1.id, amount: 2, measurement: "Tsp")
recipe_ingredient3 = RecipeIngredient.create(ingredient_id: ingredient3.id, recipe_id: recipe2.id, amount: 1, measurement: "Head")
recipe_ingredient4 = RecipeIngredient.create(ingredient_id: ingredient4.id, recipe_id: recipe2.id, amount: 3, measurement: "Tbsp")
recipe_ingredient5 = RecipeIngredient.create(ingredient_id: ingredient5.id, recipe_id: recipe2.id, amount: 6, measurement: "Oz")
recipe_ingredient6 = RecipeIngredient.create(ingredient_id: ingredient6.id, recipe_id: recipe2.id, amount: 2, measurement: "Oz")
