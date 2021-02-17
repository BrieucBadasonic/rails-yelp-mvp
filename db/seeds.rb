# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'belgian', phone_number: '03745252893' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'italian', phone_number: '24374056' }
la_grande_muraille = { name: "La Grande Muraille", address: "rue de laeken, 15 1000 Brussels", category: 'chinese', phone_number: '563820476' }
two_sisters = { name: "2 sisters", address: "Cotbusstrasse, 78 12367 Berlin", category: 'french', phone_number: '01294756' }
santa_maria = { name: "Santa Maria", address: "orianestrasse 34 16583 Berlin", category: 'japanese', phone_number: '620563956' }


[ dishoom, pizza_east, la_grande_muraille, two_sisters, santa_maria ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
