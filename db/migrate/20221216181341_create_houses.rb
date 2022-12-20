class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :estate_name
      t.string :img_url
      t.integer :price
      t.integer :user_id
      t.integer :landlord_id
      t.string :location
      t.text :description
      t.string :house_type
      t.integer :bedrooms

      t.timestamps
    end
  end
end
