class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :confirmable, :validatable

	#has_many :books
	#has_many :books, -> {where holder_id: id}, class_name: 'Book'
	  # has_many :books, inverse_of: 'holder'
	
	has_many :books, inverse_of: 'user'
	#testing one book belong to user that add it, and holder that took it 

	has_many :locations, :through => :books
	has_many :authors, :through => :books
	has_many :genres, :through => :books
	
	#extend ActiveModel::Callbacks
	before_update :calculate_balance

		def calculate_balance
			#puts "Nice trying"
			# byebug
				self.balance = added.to_i - held.to_i
					
			
		end		
	def name_with_initial
		 unless name.nil?
    	"#{name} #{surname} #{email}"
    	 else
    	 "#{email}"
    	 end    	
  	end
   #skip_before_filter :verify_authenticity_token	
  #skip_before_action :verify_authenticity_token	
end
