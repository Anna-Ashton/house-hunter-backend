class CreateLandlords < ActiveRecord::Migration[7.0]
  def change
    create_table :landlords do |t|
      t.integer :landlord_id
      t.string :full_name
      t.string :username
      t.string :email
      t.integer :contacts
      t.string :caretaker_name
      t.string :password

      t.timestamps
    end
  end
end
