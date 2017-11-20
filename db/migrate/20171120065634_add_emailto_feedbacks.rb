class AddEmailtoFeedbacks < ActiveRecord::Migration[5.1]
  def change
  	add_column :feedbacks, :email, :string
  end
end
