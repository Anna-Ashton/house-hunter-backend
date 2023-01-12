class Landlord < ApplicationRecord
  has_many :houses
  has_many :users, through: :houses
end
