class WelcomeController < ApplicationController
   # before_action :force_json, only: :search
  #before_action :authenticate_user!, except: [:index,:show]
  def index
  	@books = Book.order("created_at desc").limit(5)
  end

  def search

  	@authors = Author.ransack(surname_cont: params[:q]).result(distinct: true).limit(5)
	@books = Book.ransack(title_cont: params[:q]).result(distinct: true).limit(5)
	@locations = Location.ransack(name_cont: params[:q]).result(distinct: true).limit(5)
	@genres = Genre.ransack(genre_name_cont: params[:q]).result(distinct: true).limit(5)


 	  respond_to do |format|
    
 		   format.html{}
 		   format.json {
 		     @authors = @authors.limit(5)
 		     @books = @books.limit(5)
 		     @genres = @genres.limit(5)
 		     @locations = @locations.limit(5)	
 		   }
 	  end

=begin
	@authors = Author.ransack(name_cont: params[:q]).result(distinct: true).limit(5)
	@books = Book.ransack(title_cont: params[:q]).result(distinct: true).limit(5)
	@locations = Location.ransack(name_cont: params[:q]).result(distinct: true).limit(5)
	@genres = Genre.ransack(genre_name_cont: params[:q]).result(distinct: true).limit(5)

	# render json: {authors:[],books:[],locations:[],genres:[]} 	  
=end	
  end
=begin
  	private
	def force_json
		request.format = :json
	end
=end
end
