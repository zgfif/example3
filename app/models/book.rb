class Book < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: 'user_id'
  belongs_to :author
  belongs_to :genre
  belongs_to :location

  belongs_to :holder, class_name: "User", foreign_key: 'holder_id', optional: true
  after_save :count_of_held_books


  def count_of_held_books
  	user = User.find_by(id: holder_id.to_i)
  	user.held = user.held + 1
  	user.save
  end
end
