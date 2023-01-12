class LandlordSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :username, :email, :contacts, :caretaker_name
end
