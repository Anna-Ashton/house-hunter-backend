class LandlordSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :username, :email, :caretaker_name,:contacts, :password_digest
end
