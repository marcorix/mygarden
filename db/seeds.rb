puts "Cleaning DB.."
Plant.destroy_all
User.destroy_all

puts "Creating..."
user1 = User.create!(email: "marco@gmail.com", password: "123456")
user2 = User.create!(email: "giorgio@gmail.com", password: "123456")
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
  address: "19 Dalston Ln, London", user: user2
)
puts "Done!"
