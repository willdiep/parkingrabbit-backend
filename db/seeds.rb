# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


zipcode_array = [94102, 94103, 94104, 94105, 94107, 94108, 94109, 94110, 94111, 94112, 94114, 94115, 94116, 94117, 94118, 94121, 94122, 94123, 94124, 94127, 94128, 94129, 94130, 94131, 94132, 94133, 94134, 94143, 94158, 94188]

parking_type_array = ['Lot','Garage', 'Valet']

features_array = ['Self-Park', 'On-Site Staff', 'Handicap Accessible', 'EV Charging Available', 'Paved Road', 'Valet', 'In & Out Allowed', 'Indoors Parking', 'Outdoors Parking', 'Covered']

rating_array = [0.5, 1, 1.5, 2, 2.5, 3, 3,5, 4, 4.5, 5]

listing_description_array = ["Easily accessible corner lot in the Financial District. Just two blocks from Punch Line Comedy Club and a leisurely walk to Cable Car Museum, Exploratorium, and the Ferry Building.", "Secure and affordable parking at the Hilton Hotel in the Financial District. Just a short walk to Punch Line Comedy Club, Cable Car Museum, Ferry Building, and Exploratorium.", "Convenient valet parking garage for 100 Pine Center in Financial District. Just a short walk to the Ferry Building, Punch Line Comedy Club, Union Square, and the Contemporary Jewish Museum.", "Convenient valet parking garage in Chinatown. Just a short walk to the Masonic Center, Marines' Memorial Theatre, Grace Cathedral and the Cable Car Museum.", "A convenient garage parking in Lower Nob Hill. Just a short walk to A.C.T.'s Geary Theater, Yerba Buena Center for the Arts (YBCA), Union Square and The Regency Center.", "Convenient and affordable valet parking lot in the Embarcadero. Just a few minutes to the Ferry Building, Punchline Comedy Club, and Eureka Theatre.", "Convenient and affordable open-air lot in downtown San Francisco. Perfect parking for Fisherman's Wharf and the Academy of Art, just a short walk to the Aquarium of the Bay and the San Francisco Magic Show.", "Convenient and affordable parking garage in Nob Hill. Just a short walk to Lafayette Park, Great American Music Hall and The Masonic.", "Secure and convenient garage in Nob Hill. Just a few blocks from the Lafayette Park and minutes away from Regency Ballroom, and various restaurants.", "Convenient garage in Nob Hill. Just a short walk to the Regency Ballroom, the Fillmore and Marines Memorial Theatre.", "Secure and affordable indoor garage in downtown San Francisco. Just a few minutes to the Curran Theatre, Asian Art Museum, and Bill Graham Civic Auditorium.", "Convenient valet parking at the Argonaut Hotel in Fisherman's Wharf. Drivers love the easy access to the Musée Mécanique, Ghirardelli Square, Fisherman's Wharf, and San Francisco Art Institute.", "Convenient valet service at the Hyatt Centric in Fisherman's Wharf. Just a short walk to Washington Square Park, San Francisco Art Institute, and Bimbo's 365 Club.","Affordable valet parking in Western Addition. Very convenient to The Independent, The Fillmore, nearby parks, shops, and restaurants.", "Affordable open-air lot in Mission District. Just a short walk to the ODC Theater, Brick and Mortar Music Hall, and Public Works.", "Secure, indoor garage with valet parking in San Francisco, close to the Theater District, the Cable Car Museum and the Union Square."]

listing_images_array = ['/listing-images/1.jpg', '/listing-images/2.jpg', '/listing-images/3.jpg', '/listing-images/4.jpg', '/listing-images/5.jpg']


5.times do
  User.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: Faker::Internet.safe_email, 
    password: Faker::Internet.password
  )
end

5.times do
  Listing.create(
    name: Faker::Address.community + " Parking",
    description: listing_description_array.sample,
    address: Faker::Address.street_address,
    city: "San Franciso",
    zipcode: zipcode_array.sample,
    lat: rand(37.760281..37.765664),
    long: rand(-122.510822..-122.386529),
    hourly_price: rand(10..20),
    monthly_price: rand(120..350),
    available_start: Faker::Time.between_dates(from: Date.today, to: Date.today + 5, period: :all, format: :default),
    available_end: Faker::Time.between_dates(from: Date.today + 5, to: Date.today + 25, period: :all, format: :default),
    parking_type: parking_type_array.sample,
    contact_name: Faker::Name.unique.name,
    contact_number: Faker::PhoneNumber.cell_phone,
    contact_email: Faker::Internet.safe_email,
    rating: rating_array.sample,
    listing_image: listing_images_array.sample
  )
end

5.times do
  Booking.create(
    user_id: rand(User.first.id..User.last.id),
    listing_id: rand(Listing.first.id..Listing.last.id),
    start_time: Faker::Time.between_dates(from: Date.today, to: Date.today + 5, period: :all, format: :default),
    end_time: Faker::Time.between_dates(from: Date.today + 5, to: Date.today + 25, period: :all, format: :default)
  )
end



