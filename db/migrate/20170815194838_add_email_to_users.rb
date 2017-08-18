class AddEmailToUsers < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :email, :string, null: false, default: ""
  	add_index :users, :email,                unique: true
  end
end

