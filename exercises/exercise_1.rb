require_relative '../setup'

puts "Exercise 1"
puts "----------"

stores = [
  { 
    name: "Burnaby",
    annual_revenue: "300000",
    womens_apparel: true,
    mens_apparel: false
  },

  {
    name: "Richmond",
    annual_revenue: "1260000",
    womens_apparel: true,
    mens_apparel: false
  },

  {
    name: "Gastown",
    annual_revenue: "190000",
    womens_apparel: false,
    mens_apparel: true
  }
]

stores.each do |store|
  new_store = Store.create(store)
end

puts "Number of stores: #{Store.count}"