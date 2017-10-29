class Location < ApplicationRecord
validates :name, :address, presence: true
has_many :books
has_many :authors, :through => :books
has_many :genres, :through => :books
has_many :users, :through => :books

mount_uploader :picture, LocationImageUploader
end
