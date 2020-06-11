class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }

  has_many :bookings
  has_many :listings, through: :bookings
end
