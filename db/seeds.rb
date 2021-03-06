# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create = (first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Address.latitude)
# mission = Mission.new(category: Faker::Job.field, title: Faker::Friends.character, description:Faker::Lorem.sentences(1))

10.times do
  user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Address.latitude)
  mission = Mission.new(category: 'Sport', title: Faker::Friends.character, description:Faker::Lorem.sentences(1), address: "16 villa gaudelet", book: false)
  mission.user = user
  mission.save
end


