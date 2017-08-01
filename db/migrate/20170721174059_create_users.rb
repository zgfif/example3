class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.integer :phone
      t.string :email
      t.float :rating

      t.timestamps
    end
  end
end
