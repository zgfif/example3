class User < ApplicationRecord
has_many :books
has_many :locations, :through => :books
has_many :authors, :through => :books
has_many :genres, :through => :books
def name_with_initial
    "#{name} #{surname}"
  end
end
