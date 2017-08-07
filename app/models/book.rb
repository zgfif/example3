class Book < ApplicationRecord
  belongs_to :user
  belongs_to :author
  belongs_to :genre
  belongs_to :location
 #after_create :increase_added_of_user
 #def increase_added_of_user
 #	book.user.added = @book.user.added.to_i + 1
 #end
end
