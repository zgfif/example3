class RenameRatingToBalanceInUsers < ActiveRecord::Migration[5.1]
  def change
      rename_column :users, :rating, :balance
  end
end
