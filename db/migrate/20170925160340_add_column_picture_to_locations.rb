class AddColumnPictureToLocations < ActiveRecord::Migration[5.1]

  def change
  		add_column :locations, :picture, :string
  end
end
