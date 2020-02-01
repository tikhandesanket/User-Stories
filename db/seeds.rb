# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

50.times do
  user =  User.create(firstname: Faker::Name.first_name,
   	lastname: Faker::Name.last_name,
   	 age: Faker::Number.within(range: 21..34),
   	 gender: Faker::Gender.binary_type,
   	 country: Faker::Nation.nationality,
   	 email: Faker::Internet.email,
   	 password: Faker::Code.isbn 
   	 )
 
	p "-----------#{user.errors.messages}"
  p "----------#{user}"
end
