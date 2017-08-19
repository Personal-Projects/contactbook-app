# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
 Contact.create(
  first_name: Faker::Name.first_name,
  middle_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  number: Faker::PhoneNumber.phone_number,
  email: "@gmail.com",
  bio: Faker::Ancient.god,
  latitude: Faker::Address.latitude,
  longitude: Faker::Address.longitude
  )
end