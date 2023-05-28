require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
10.times do 
    flat = Flat.create(
        name: Faker::Address.community,
        address: Faker::Address.full_address,
        description: Faker::Lorem.paragraph,
        price_per_night: Faker::Number.decimal(l_digits: 2),
        number_of_guests: Faker::Number.between(from: 1, to: 5)
    )
    Review.create(
        rating: Faker::Number.between(from: 0, to: 5),
        content: Faker::Lorem.paragraph,
        flat: flat
    )
end
