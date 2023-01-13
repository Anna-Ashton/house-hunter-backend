class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :house_id
      t.date :booking_date

      t.timestamps
    end
  end
end
