class RemoveImageLocationFromLocation < ActiveRecord::Migration[5.1]
  def change
  	remove_column :locations, :image_location
  end
end
