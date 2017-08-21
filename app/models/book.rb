class Book < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: 'user_id'
  belongs_to :author
  belongs_to :genre
  belongs_to :location

  belongs_to :holder, class_name: "User", foreign_key: 'holder_id', optional: true
 
end
