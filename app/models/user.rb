class User < ApplicationRecord
  has_secure_password
    has_many :reviews
  has_many :houses
  has_many :landlords, through: :houses
  validates :email, presence: true
end
