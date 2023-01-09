class House < ApplicationRecord
    belongs_to :landlord
    has_many :reviews
    has_many :users
end
