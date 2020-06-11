class BookingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :start_time, :end_time, :driver_name, :driver_license, :driver_contact_number, :vehicle_license_plate, :car_make, :car_year, :billing_address, :billing_city, :billing_state, :billing_zipcode, :cardholder_name, :card_number, :card_exp_date, :card_cvv, :listing_total
  belongs_to :user
  belongs_to :listing
end
