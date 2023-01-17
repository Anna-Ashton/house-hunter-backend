class HouseSerializer < ActiveModel::Serializer
  attributes :id, :estate_name, :img_url, :price, :user_id, :landlord_id, :location, :description, :house_type, :bedrooms
end
