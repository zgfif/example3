class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :address
      t.text :description
      t.string :email
      t.integer :telephone

      t.timestamps
    end
  end
end
