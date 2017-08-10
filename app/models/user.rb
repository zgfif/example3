class User < ApplicationRecord

	has_many :books
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
    	"#{name} #{surname}"    	
  	end
   #skip_before_filter :verify_authenticity_token	
  #skip_before_action :verify_authenticity_token	
end
