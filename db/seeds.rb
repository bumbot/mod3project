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

q1 = Question.create(prompt:"Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.", answer:"var twoSum = function(nums, target) {
    let map = new Map;
    for (var i = 0; i < nums.length; i++) {
        let complement = target - nums[i];
        if (map.has(complement)) {
            return [map.get(complement), i]
        }
        map.set(nums[i], i);
    }
}", testCase:"Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].")

q2 = Question.create(prompt:"Given two numbers, create a function that will find their sum", answer:"addSum(a, b){return a+b}", testCase:"addSum(1, 2)")

q3 = Question.create(prompt: "Given an array of numbers, find the sum of all the numbers", answer: "addArray(arr){}", testCase: "")


battle1 = Battle.create(user: user1, opponent: user2, win: true, question: q1)
battle2 = Battle.create(user: user2, opponent: user1, win: true, question: q1)