class Admin::StatisticController < Admin::AdminController
	def index
		@user_count = User.all.count
		@book_count = Book.all.count
		@locations = Location.all
		@count_locations = @locations.count
		@book_available_count = Book.where(holder_id: nil).count
		@book_held_count = Book.where(available: false).count
		
			
	end
end
