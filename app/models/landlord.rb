class Landlord < ApplicationRecord
  has_secure_password
  has_many :houses
  has_many :users, through: :houses

  validates :full_name, :username, :caretaker_name, :email, presence: true
  validates :email, uniqueness: true
  validates :password, length: { in: 6..20 }

end
