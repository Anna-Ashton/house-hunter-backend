class House < ApplicationRecord
  has_many :reviews
  belongs_to :user
  belongs_to :landlord
end
