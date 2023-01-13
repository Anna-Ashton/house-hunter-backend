class User < ApplicationRecord
  has_many :reviews
  has_many :bookings
  has_many :houses
  has_many :landlords, through: :houses
end
