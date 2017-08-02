class SetDefaultValuesForBalanceAddedHeld < ActiveRecord::Migration[5.1]
  def change
  		change_column :users, :balance, :integer, :default => 0
  		change_column :users, :added, :integer, :default => 0
  		change_column :users, :held, :integer, :default => 0
  end
end
