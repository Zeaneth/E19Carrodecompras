# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
12.times do |i|
    Product.create(
        name: Faker::Device.model_name,
        price: Faker::Commerce.price(range = 150..1500.0, as_string = true),
        photo: "http://lorempixel.com/g/400/200/technics/#{i + 1}/"
    )
    end