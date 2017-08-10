class AddHolderIdToBook < ActiveRecord::Migration[5.1]
  def change
  	add_column :books, :holder_id, :bigint
  end
end
