require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...


stores = [
  { 
    name: "Surrey",
    annual_revenue: "224000",
    womens_apparel: true,
    mens_apparel: false
  },

  {
    name: "Whistler",
    annual_revenue: "1900000",
    womens_apparel: false,
    mens_apparel: true
  },

  {
    name: "Yaletown",
    annual_revenue: "430000",
    womens_apparel: true,
    mens_apparel: true
  }
]

stores.each do |store|
  new_store = Store.create(store)
end

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts(store.name, store.annual_revenue)
end

@womens_stores = Store.where("womens_apparel = ? and annual_revenue < ?", true, 1000000)

@womens_stores.each do |store| 
  puts(store.name, store.annual_revenue)
end
