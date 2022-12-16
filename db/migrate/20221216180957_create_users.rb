class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :full_name
      t.string :username
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
