class Location < ApplicationRecord
has_many :books
has_many :authors, :through => :books
has_many :genres, :through => :books
has_many :users, :through => :books

end
