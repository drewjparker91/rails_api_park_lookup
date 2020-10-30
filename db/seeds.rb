# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Park.destroy_all
30.times do |i|
  Park.create!(name: Faker::Educator.campus, location: Faker::Address.city(options: {with_state: true}), review: Faker::Hipster.paragraph_by_chars(characters: 50, supplemental: false), rating: rand(1...6))
end

