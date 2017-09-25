class RenameImage < ActiveRecord::Migration[5.1]
  def change
  		rename_column :locations, :image, :image_location
  end
end
