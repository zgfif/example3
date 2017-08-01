class AddLocationToBooks < ActiveRecord::Migration[5.1]
  def change
    add_reference :books, :location, foreign_key: true
  end
end
