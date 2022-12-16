class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :review_id
      t.integer :user_id
      t.integer :house_id
      t.string :comment

      t.timestamps
    end
  end
end
