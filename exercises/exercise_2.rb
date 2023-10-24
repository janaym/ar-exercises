require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id: 1)

puts "Question 2: found store #{@store1.name}"

@store2 = Store.find_by(id: 2)

@store1.update(name: "Victoria")


puts "changed store name to #{@store1.name}"

