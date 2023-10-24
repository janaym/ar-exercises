require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts "Question 5: the total annual revenue is: ", Store.sum(:annual_revenue)
puts "The average store annual revenue is: ", Store.sum(:annual_revenue)/Store.count
puts "Stores making more than one mil: ", Store.where("annual_revenue > ?", 1000000).count()

