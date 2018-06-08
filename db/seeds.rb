# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


# 50.times do |i|
# 	Category.create!(
# 		name: Faker::Commerce.department(1, true)
# 		)
# end

1000.times do |u|
    User.create!(
        email: Faker::Internet.email,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        password: "password"
        )
end

# 100.times do |s|
#     Shop.create!(
#         name: Faker::Name.first_name + "'s " + Faker::Commerce.department(1, true) + " shop",
#         description: Faker::Lorem.paragraphs,
#         location: Faker::Address.city,
#         user_id: (rand(1..90) + rand(1..10))
#         )
# end

# 1000.times do |i|
#   Product.create!(
#     name: Faker::Commerce.product_name,
#     price: Faker::Commerce.price,
#     description: Faker::Lorem.paragraphs,
#     shop_id: rand(5..100),
#     inventory: rand(2..100),
#     img_url: "",
#     category_ids: [rand(1..50),rand(1..50),rand(1..50),rand(1..50)] )
#     print '.' if i % 10 == 0
#   end
# puts

# 100.times do |o|
#     Order.create!(
#         description: Faker::Lorem.paragraphs,
#         product_id: rand(1..1000),
#         user_id: rand(1..1000),
#         quantity: rand(1..10)
#         )
# end