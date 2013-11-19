# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.attr_accessible :is_ninjedi 
User.create first_name: "Kevin", last_name: "Anderson", email: "#{ENV['ADMIN_EMAIL']}", password: "#{ENV['ADMIN_PASSWORD']}", is_ninjedi: true