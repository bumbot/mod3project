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

q1 = Question.create(prompt:"", answer:"", testCase:"")
q2 = Question.create(prompt:"", answer:"", testCase:"")


battle1 = Battle.create(user: user1, opponent: user2, win: true, question: q1)
battle2 = Battle.create(user: user2, opponent: user1, win: true, question: q2)