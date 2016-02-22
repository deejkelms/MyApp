# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

User.create!(name:  "Example User",
             email: "example@doubledecker.org",
             password:              "foobar",
             password_confirmation: "foobar")

50.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@doubledecker.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
