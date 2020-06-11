# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


zipcode_array = [94102, 94103, 94104, 94105, 94107, 94108, 94109, 94110, 94111, 94112, 94114, 94115, 94116, 94117, 94118, 94121, 94122, 94123, 94124, 94127, 94128, 94129, 94130, 94131, 94132, 94133, 94134, 94143, 94158, 94188]

parking_type_array = ['Lot','Garage', 'Valet', 'Resident']

features_array = ['Self-Park', 'On-Site Staff', 'Handicap Accessible', 'EV Charging Available', 'Paved Road', 'Valet', 'In & Out Allowed', 'Indoors Parking', 'Outdoors Parking', 'Roofed']

def random_parking_type_items_array(arr)
  result_array = []
  x = 0
  while x <= 10
    random_item = arr.sample
    if !result_array.include?(random_item)
      result_array.push(random_item)
    end
    x += 1
  end
  result_array
end

rating_array = [0.5, 1, 1.5, 2, 2.5, 3, 3,5, 4, 4.5, 5]

listing_description_array = ["Easily accessible corner lot in the Financial District. Just two blocks from Punch Line Comedy Club and a leisurely walk to Cable Car Museum, Exploratorium, and the Ferry Building.", "Secure and affordable parking at the Hilton Hotel in the Financial District. Just a short walk to Punch Line Comedy Club, Cable Car Museum, Ferry Building, and Exploratorium.", "Convenient valet parking garage for 100 Pine Center in Financial District. Just a short walk to the Ferry Building, Punch Line Comedy Club, Union Square, and the Contemporary Jewish Museum.", "Convenient valet parking garage in Chinatown. Just a short walk to the Masonic Center, Marines' Memorial Theatre, Grace Cathedral and the Cable Car Museum.", "A convenient garage parking in Lower Nob Hill. Just a short walk to A.C.T.'s Geary Theater, Yerba Buena Center for the Arts (YBCA), Union Square and The Regency Center.", "Convenient and affordable valet parking lot in the Embarcadero. Just a few minutes to the Ferry Building, Punchline Comedy Club, and Eureka Theatre.", "Convenient and affordable open-air lot in downtown San Francisco. Perfect parking for Fisherman's Wharf and the Academy of Art, just a short walk to the Aquarium of the Bay and the San Francisco Magic Show.", "Convenient and affordable parking garage in Nob Hill. Just a short walk to Lafayette Park, Great American Music Hall and The Masonic.", "Secure and convenient garage in Nob Hill. Just a few blocks from the Lafayette Park and minutes away from Regency Ballroom, and various restaurants.", "Convenient garage in Nob Hill. Just a short walk to the Regency Ballroom, the Fillmore and Marines Memorial Theatre.", "Secure and affordable indoor garage in downtown San Francisco. Just a few minutes to the Curran Theatre, Asian Art Museum, and Bill Graham Civic Auditorium.", "Convenient valet parking at the Argonaut Hotel in Fisherman's Wharf. Drivers love the easy access to the Musée Mécanique, Ghirardelli Square, Fisherman's Wharf, and San Francisco Art Institute.", "Convenient valet service at the Hyatt Centric in Fisherman's Wharf. Just a short walk to Washington Square Park, San Francisco Art Institute, and Bimbo's 365 Club.","Affordable valet parking in Western Addition. Very convenient to The Independent, The Fillmore, nearby parks, shops, and restaurants.", "Affordable open-air lot in Mission District. Just a short walk to the ODC Theater, Brick and Mortar Music Hall, and Public Works.", "Secure, indoor garage with valet parking in San Francisco, close to the Theater District, the Cable Car Museum and the Union Square."]

listing_images_array = [
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870117/11_gocm8f.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870162/20_uouigo.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589869591/28_ibvkp4.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589793382/26_tjxfqo.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589793381/25_niqjih.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870399/22_fwpjkc.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870418/21_fdxccy.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870432/13_w5g7xm.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870445/18_php9vr.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870459/19_tocib5.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870469/17_sfusfx.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589793379/1_isbvm4.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870583/15_bwz0jj.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589793378/14_xlqae7.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870644/12_yaxa9p.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870658/10_twu9mw.webp',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870677/7_hlpcuc.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870717/4_sv4f9t.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589793374/8_wzp112.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870746/2_myrujb.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870760/6_nxv5nk.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870770/5_qzxumh.jpg',
  'https://res.cloudinary.com/dobz3lasb/image/upload/v1589870796/3_l36pts.jpg',
]

# lat_array [
#   rand(37.760281..37.765664),
# ]

# long_array = [
#   rand(-122.510822..-122.386529),
# ]

1.times do
  User.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: Faker::Internet.safe_email, 
    password: "ABC"
  )
end

20.times do
  Listing.create(
    name: Faker::Address.community + " Parking",
    description: listing_description_array.sample,
    address: Faker::Address.street_address,
    city: "San Franciso, CA",
    zipcode: zipcode_array.sample,
    lat: rand(37.760281..37.765664),
    long: rand(-122.510822..-122.386529),
    hourly_price: rand(10..20),
    monthly_price: rand(120..350),
    available_start: Faker::Time.between_dates(from: Date.today, to: Date.today + 5, period: :all, format: :default),
    available_end: Faker::Time.between_dates(from: Date.today + 10, to: Date.today + 90, period: :all, format: :default),
    parking_type: parking_type_array.sample,
    contact_name: Faker::Name.unique.name,
    contact_number: Faker::PhoneNumber.cell_phone,
    contact_email: Faker::Internet.safe_email,
    rating: rating_array.sample,
    # listing_image: listing_images_array.sample,
    listing_image: listing_images_array.sample,
    features: random_parking_type_items_array(features_array)
  )
end

1.times do
  Booking.create(
    user_id: rand(User.first.id..User.last.id),
    listing_id: rand(Listing.first.id..Listing.last.id),
    start_time: Faker::Time.between_dates(from: Date.today, to: Date.today + 5, period: :all, format: :default),
    end_time: Faker::Time.between_dates(from: Date.today + 5, to: Date.today + 25, period: :all, format: :default),
    driver_name: 'test',
    driver_license: 'test',
    driver_contact_number: 'test',
    vehicle_license_plate: 'test',
    car_make: 'test',
    car_year: 'test',
    billing_address: 'test',
    billing_city: 'test',
    billing_state: 'test',
    billing_zipcode: 'test',
    cardholder_name: 'test',
    card_number: 'test',
    card_exp_date: 'test',
    card_cvv: 'test',
    listing_total: 'test'
  )
end



