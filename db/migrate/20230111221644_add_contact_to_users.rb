class AddContactToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :contact, :integer
  end
end
