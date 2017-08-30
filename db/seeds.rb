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
  bio: Faker::Ancient.god
)
end

# contacts = Contact.all

# contacts.each do |contact|
#   contact.update(user_id: rand(1..4))
# end

# Contact.all.each do |contact|
#     ContactGroup.create(group_id: rand(3...5), contact_id: rand())
#   end







