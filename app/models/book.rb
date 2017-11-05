class Book < ApplicationRecord
  validates :title, :description, presence: true                    
  mount_uploader :image, ImageUploader

  belongs_to :user, class_name: "User", foreign_key: 'user_id'
  belongs_to :holder, class_name: "User", foreign_key: 'holder_id', optional: true


  belongs_to :author
  belongs_to :genre
  belongs_to :location

  
  after_save :count_of_held_books2#, :is_available
  before_save :is_available
  before_update :is_available

  
  def count_of_held_books2
  	users = User.all
  		users.each do |user|
  			user.held = Book.where(holder_id: user.id.to_i).count
        user.added = Book.where(user_id:user.id.to_i).count
  			user.save
  		end
  end    
  def is_available
     if self.holder_id.nil?
        self.available = true
        #self.save
     else 
        self.available = false
        #self.save
     end
  end
end
