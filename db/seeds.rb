puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
restaurants = [
{name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0090000900009", category: "chinese"},
{name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0090000900009", category: "chinese"},
{name: "Axé", address: "Brasil, SP, center norte", phone_number: "0090000900009", category: "bras"},
{name: "Burger King", address: "center norte, Brasil SP", phone_number: "0090000900009", category: "burger"},
{name: "Divino Fogão", address: "Brasil, qualquer shopping", phone_number: "0090000900009", category: "bras"},
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
