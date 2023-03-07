require "open-uri"

puts "Cleaning DB.."
Plant.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create!(email: "marco@gmail.com", password: "123456")
user2 = User.create!(email: "giorgio@gmail.com", password: "123456")

puts "Creating plants..."
plant = Plant.create!(
  name: "caryota",
  size: "small",
  address: "128 Kingsland Road London", user: user1
)
file = URI.open("https://res.cloudinary.com/patch-gardens/image/upload/c_fill,f_auto,h_840,q_auto:good,w_840/v1647596458/vxnuidely9mqnh1zuwuv.jpg")
plant.image.attach(io: file, filename: "nes.png", content_type: "image/png")
plant.save

plant = Plant.create!(
  name: "monstera",
  size: "medium",
  address: "61 Mare St, London", user: user1
)
file = URI.open("https://cdn.shopify.com/s/files/1/1706/1307/products/Philodendron-scandens-Sweetheart-Plant-Moss-Pole-27x150cm_5000x.jpg")
plant.image.attach(io: file, filename: "nes.png", content_type: "image/png")
plant.save

plant = Plant.create!(
  name: "philo",
  size: "large",
  address: "19 Dalston Ln, London", user: user1
)
file = URI.open("https://cdn.shopify.com/s/files/1/0456/8770/1659/products/image_56dcbbb6-b04b-4b44-a121-b680e7c6a344_1296x.jpg?v=1658858506")
plant.image.attach(io: file, filename: "nes.png", content_type: "image/png")
plant.save

plant = Plant.create!(
  name: "Swiss cheese",
  size: "medium",
  address: "50 Wapping Ln, London", user: user2
)
file = URI.open("https://i0.wp.com/oxy-plants.com/wp-content/uploads/2020/09/swiss-cheese-plant-monstera-deliciosa-3-1.jpg")
plant.image.attach(io: file, filename: "nes.png", content_type: "image/png")
plant.save

plant = Plant.create!(
  name: "Orchid",
  size: "small",
  address: "111 Camden High St, London", user: user2
)
file = URI.open("https://orchidya.com/wp-content/uploads/2021/11/Orchidya-London-Flower-Shop-Delivery-Pink-Orchid-Seasonal-Quality-Small-Orchid-1.jpg")
plant.image.attach(io: file, filename: "nes.png", content_type: "image/png")
plant.save

puts "Done!"
