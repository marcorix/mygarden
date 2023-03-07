puts "Cleaning DB.."
Plant.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create!(email: "marco@gmail.com", password: "123456")
user2 = User.create!(email: "giorgio@gmail.com", password: "123456")

puts "Creating plants..."
Plant.create!(
  name: "caryota",
  size: "small",
  address: "128 Kingsland Road London", user: user1
)
Plant.create!(
  name: "monstera",
  size: "medium",
  address: "61 Mare St, London", user: user1
)
Plant.create!(
  name: "philo",
  size: "large",
  address: "19 Dalston Ln, London", user: user1
)
Plant.create!(
  name: "Swiss cheese",
  size: "large",
  address: "50 Wapping Ln, London", user: user2
)
Plant.create!(
  name: "Swiss cheese",
  size: "medium",
  address: "50 Wapping Ln, London", user: user2
)
Plant.create!(
  name: "Orchid",
  size: "small",
  address: "111 Camden High St, London", user: user2
)
puts "Done!"
