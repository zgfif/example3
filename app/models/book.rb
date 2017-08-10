class Book < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :author
  belongs_to :genre
  belongs_to :location

  belongs_to :holder, class_name: "User", optional: true
 #after_create :increase_added_of_user
 #def increase_added_of_user
 #	book.user.added = @book.user.added.to_i + 1
 #end
end
