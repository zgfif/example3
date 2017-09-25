class AddImageLocationToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :image_location, :string
  end
end
