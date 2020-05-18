class ListingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :address, :city, :zipcode, :lat, :long, :hourly_price, :monthly_price, :available_start, :available_end,  :parking_type, :contact_name, :contact_number, :contact_email, :rating, :listing_image
end
