class BookingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :start_time, :end_time
  belongs_to :user
  belongs_to :listing
end
