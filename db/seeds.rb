# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
JoinTableTagGossip.destroy_all
PrivateMessage.destroy_all

10.times do
  city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.yoda, email: Faker::Internet.email, age: Faker::Number.number(digits: 2), city: City.all.sample)
end

20.times do |index|
  gossip = Gossip.create!(title: "Title #{index}", content: Faker::Quote.most_interesting_man_in_the_world, user: User.all.sample)
end

10.times do 
  tag = Tag.create!(title: "##{Faker::Hacker.noun}")
end

Gossip.all.each do |g|
  j = JoinTableTagGossip.create!(tag: Tag.all.sample, gossip: g)
end

10.times do 
  private_message = PrivateMessage.create!(content: Faker::Quotes::Shakespeare.hamlet_quote, sender: User.all.sample, recipient: User.all.sample)
end