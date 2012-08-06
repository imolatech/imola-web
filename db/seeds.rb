# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :email => 'user@imola.com', :password => 'changeit', :password_confirmation => 'changeit'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Admin User', :email => 'admin@imola.com', :password => 'changeit', :password_confirmation => 'changeit'
puts 'New user created: ' << user2.name
user2.add_role :admin
