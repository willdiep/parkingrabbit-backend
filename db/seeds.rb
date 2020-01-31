# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  User.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: Faker::Internet.safe_email, 
    password: Faker::Internet.password)
end

zipcode_array = [94102, 94103, 94104, 94105, 94107, 94108, 94109, 94110, 94111, 94112, 94114, 94115, 94116, 94117, 94118, 94121, 94122, 94123, 94124, 94127, 94128, 94129, 94130, 94131, 94132, 94133, 94134, 94143, 94158, 94188]

5.times do
  Listing.create(
    title: "test",
    description: "test",
    address: Faker::Address.street_address,
    city: "San Franciso",
    zipcode: zipcode_array.sample,
    lat: rand(37.760281..37.765664),
    long: rand(-122.510822..-122.386529),
    price: rand(3),
    available_start: Faker::Time.between_dates(from: Date.today, to: Date.today + 5, period: :all, format: :default),
    available_end: Faker::Time.between_dates(from: Date.today + 5, to: Date.today + 25, period: :all, format: :default)
  )
end

