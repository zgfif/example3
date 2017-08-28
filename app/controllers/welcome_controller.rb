class WelcomeController < ApplicationController
   # before_action :force_json, only: :search
  before_action :authenticate_user!, except: [:index,:show,:search]
  def index
  	@books = Book.order("created_at desc").limit(5)
  end

  def search

  # byebug
  # if  current_user.present?&&current_user.admin?
      
      
          @authors = Author.ransack(surname_cont: params[:q]).result(distinct: true).limit(5)
          @books = Book.ransack(title_cont: params[:q]).result(distinct: true).limit(5)
          @locations = Location.ransack(name_cont: params[:q]).result(distinct: true).limit(5)
          @genres = Genre.ransack(genre_name_cont: params[:q]).result(distinct: true).limit(5)

        if user_signed_in?&&current_user.admin?  
            @users = User.ransack(email_cont: params[:q]).result(distinct: true).limit(5)
        end
  # end

 	  respond_to do |format|
    
 		   format.html{}
 		   format.json {
         # @authors = @authors.limit(5)
         # @books = @books.limit(5)
         # @genres = @genres.limit(5)
         # @locations = @locations.limit(5) 
         # unless @users.nil?
              # @users = @users.limit(5)
         # end    
 		   }

 	  end
  end
end
