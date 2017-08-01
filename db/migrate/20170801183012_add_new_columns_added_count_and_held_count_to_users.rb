class AddNewColumnsAddedCountAndHeldCountToUsers < ActiveRecord::Migration[5.1]
  def change
  		add_column :users, :added, :integer
    	add_column :users, :held, :integer
  end
end
