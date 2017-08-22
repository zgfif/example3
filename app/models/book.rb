class Book < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: 'user_id'
  belongs_to :author
  belongs_to :genre
  belongs_to :location

  belongs_to :holder, class_name: "User", foreign_key: 'holder_id', optional: true
  after_save :count_of_held_books2


  def count_of_held_books
  	count = Book.where(holder)
  	#user = User.find_by(id: holder_id.to_i)
  	#user.held = user.held + 1
  	#user.save
  end
  def count_of_held_books2
  	users = User.all
  		users.each do |user|
  			user.held = Book.where(holder_id: user.id.to_i).count
  			user.save
  		end
  end
end
