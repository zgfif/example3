class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :confirmable, :validatable

	#has_many :books
	#has_many :books, -> {where holder_id: id}, class_name: 'Book'
	# has_many :books, inverse_of: 'holder'
	# has_many :books, inverse_of: 'user'

	#testing one book belong to user that add it, and holder that took it 
	has_many :added_books, :class_name => 'Book', :foreign_key => 'user_id'
	has_many :held_books, :class_name => 'Book', :foreign_key => 'holder_id'
	
	has_many :locations, :through => :books
	has_many :authors, :through => :books
	has_many :genres, :through => :books
	
	before_update :calculate_balance

	def calculate_balance
		self.balance = added.to_i - held.to_i							
	end

	def name_with_initial
		 unless name.nil?
    	"#{name} #{surname} #{email}"
    	 else
    	 "#{email}"
    	 end    	
  	end	
end
