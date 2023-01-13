class House < ApplicationRecord
  has_many :reviews
  has_many :bookings
  belongs_to :user
  belongs_to :landlord
end
