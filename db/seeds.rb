# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Question.destroy_all
Battle.destroy_all


user1 = User.create(username: "Wesley", mmr: 1000)
user2 = User.create(username: "Paul", mmr: 1000)
user3 = User.create(username: "Jenny", mmr: 1000)
user4 = User.create(username: "Joseph", mmr: 1000)

q1 = Question.create(questionPrompt:"Write a function that finds the sum", editorText: "function findSum(a, b){ \n\n}\n \n \n \n// Don't remove text below\nconsole.log(findSum(1,2) == 3)\nconsole.log(findSum(2,2) == 4)", finalText: "findSum(1,2) == 3 && findSum(2,2) == 4")

q2 = Question.create(questionPrompt:"Write a function that finds the product", editorText: "function findProduct(a, b){ \n\n}\n \n \n \n// Don't remove text below\nconsole.log(findProduct(1,2) == 2)\nconsole.log(findProduct(2,2) == 4)", finalText: "findSum(1,2) == 2 && findSum(2,2) == 4")


battle1 = Battle.create(user: user1, opponent: user2, win: true, question: q1)
battle2 = Battle.create(user: user2, opponent: user1, win: true, question: q1)