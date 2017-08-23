class Book < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user, class_name: "User", foreign_key: 'user_id'
  belongs_to :holder, class_name: "User", foreign_key: 'holder_id', optional: true


  belongs_to :author
  belongs_to :genre
  belongs_to :location

  
  after_save :count_of_held_books2


  
  def count_of_held_books2
  	users = User.all
  		users.each do |user|
  			user.held = Book.where(holder_id: user.id.to_i).count
        user.added = Book.where(user_id:user.id.to_i).count
  			user.save
  		end
  end
end
