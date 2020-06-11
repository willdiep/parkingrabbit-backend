class AddCheckdoutToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :driver_name, :string
    add_column :bookings, :driver_license, :string
    add_column :bookings, :driver_contact_number, :string
    add_column :bookings, :vehicle_license_plate, :string
    add_column :bookings, :car_make, :string
    add_column :bookings, :car_year, :integer
    add_column :bookings, :billing_address, :string
    add_column :bookings, :billing_city, :string
    add_column :bookings, :billing_state, :string
    add_column :bookings, :billing_zipcode, :string
    add_column :bookings, :cardholder_name, :string
    add_column :bookings, :card_number, :string
    add_column :bookings, :card_exp_date, :string
    add_column :bookings, :card_cvv, :string
    add_column :bookings, :listing_total, :string
  end
end
