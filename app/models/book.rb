class Book < ApplicationRecord
  belongs_to :user
  belongs_to :author
  belongs_to :genre
  belongs_to :location
end
