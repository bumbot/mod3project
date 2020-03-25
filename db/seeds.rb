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
Room.destroy_all

user = User.create(username: "none", mmr:0, id:0)
user1 = User.create(username: "Wesley", mmr: 1000)
user2 = User.create(username: "Paul", mmr: 1000)
user3 = User.create(username: "Jenny", mmr: 1000)
user4 = User.create(username: "Joseph", mmr: 1000)
none = User.create(username: "", mmr: 1000)

q1 = Question.create(questionPrompt:"Write a function that finds the sum", editorText: "function findSum(a, b){ \n\n}\n \n \n \n// Don't remove text below\nconsole.log(findSum(1,2) == 3)\nconsole.log(findSum(2,2) == 4)", finalText: "findSum(1,2) == 3 && findSum(2,2) == 4", difficulty: 'easy')

q2 = Question.create(questionPrompt:"Write a function that finds the product", editorText: "function findProduct(a, b){ \n\n}\n \n \n \n// Don't remove text below\nconsole.log(findProduct(1,2) == 2)\nconsole.log(findProduct(2,2) == 4)", finalText: "findProduct(1,2) == 2 && findProduct(2,2) == 4", difficulty: 'medium')


q3 = Question.create(questionPrompt:"Write a function that finds the difference", editorText: "function findDifference(a, b){ \n\n}\n \n \n \n// Don't remove text below\nconsole.log(findDifference(10,2) == 8)\nconsole.log(findDifference(6,2) == 4)", finalText: "findDifference(10,2) == 8 && findSum(6,2) == 4", difficulty: 'hard')

room1 = Room.create(player1: user1, player2: none, state: 1, room_number: 2215)
room2 = Room.create(player1: user2, player2: none, state: 1, room_number: 4415)

battle1 = Battle.create(user: user1, opponent: user2, win: true, question: q1, room: room1, user_time: "05:30")
battle2 = Battle.create(user: user2, opponent: user1, win: true, question: q1, room: room2, user_time: "08:15")