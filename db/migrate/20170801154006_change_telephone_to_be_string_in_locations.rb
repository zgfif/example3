class ChangeTelephoneToBeStringInLocations < ActiveRecord::Migration[5.1]
  def change
	change_column :locations, :telephone, :string
  end
end
