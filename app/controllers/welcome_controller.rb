class WelcomeController < ApplicationController
   # before_action :force_json, only: :search
  before_action :authenticate_user!, except: [:index,:show,:search,:autocomplete]
  def index
  	@books = Book.order("created_at desc").limit(5)
    @locations = Location.all
  end

  def search
          # byebug          
          @authors = Author.ransack(surname_cont: params[:q]).result(distinct: true)
          @books = Book.ransack(title_cont: params[:q]).result(distinct: true)
          @locations = Location.ransack(name_cont: params[:q]).result(distinct: true)
          @genres = Genre.ransack(genre_name_cont: params[:q]).result(distinct: true)

        if user_signed_in?&&current_user.admin?  
            @users = User.ransack(email_cont: params[:q]).result(distinct: true)
        end

 	  respond_to do |format|
    
 		   format.html{}
 		   format.json {}
 	  end
  end
  def autocomplete
          # byebug          
          @authors = Author.ransack(surname_cont: params[:q]).result(distinct: true).limit(5)
          @books = Book.ransack(title_cont: params[:q]).result(distinct: true).limit(5)
          @locations = Location.ransack(name_cont: params[:q]).result(distinct: true).limit(5)
          @genres = Genre.ransack(genre_name_cont: params[:q]).result(distinct: true).limit(5)

        if user_signed_in?&&current_user.admin?  
            @users = User.ransack(email_cont: params[:q]).result(distinct: true).limit(5)
        end

    respond_to do |format|
    
       format.html{}
       format.json {}
    end
  end
end
