class WelcomeController < ApplicationController
  #before_action :authenticate_user!, except: [:index,:show]
  def index
  	@books = Book.order("created_at desc").limit(5)
  end
end
