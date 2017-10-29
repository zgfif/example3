class Admin::AuthorsController < Admin::AdminController
  # before_action :authenticate_user!#, except: [:index,:show]
  before_action :set_author, only: [:edit, :update, :destroy]

  # GET /authors
  # GET /authors.json
=begin
  def index
    @authors = Author.all
  end

  # GET /authors/1
  # GET /authors/1.json
  def show
  end
=end
  # GET /authors/new
  def new_author_at_book
      @author = Author.new
      respond_to do |format|
          format.js #{render layout: false} # Add this line to you respond_to block
      end
  end

  def new
    @author = Author.new
  end

  # GET /authors/1/edit
  def edit
  end

  # POST /authors
  # POST /authors.json
  def create
    @author = Author.new(author_params)

    respond_to do |format|
      if @author.save 
        # format.html #{redirect_to current_page, notice: 'Author was successfully created.' }
        #format.html #{ redirect_to new_admin_book_url, notice: 'Author was successfully created.' }
        format.html
        format.json { render :show, status: :created, location: @author }
        format.js # Add this line to you respond_to block
      else
        format.html { render :new }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authors/1
  # PATCH/PUT /authors/1.json
  def update
    respond_to do |format|
      if @author.update(author_params)
        
        format.html { redirect_to @author, notice: 'Author was successfully updated.' }
        format.json { render :show, status: :ok, location: @author }
      else
        format.html { render :edit }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authors/1
  # DELETE /authors/1.json
  def destroy
    @author.destroy
    respond_to do |format|
      format.html { redirect_to authors_url, notice: 'Author was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def redirect_to_default
      redirect_to root_path
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_author
      @author = Author.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def author_params
      params.require(:author).permit(:name, :surname)
    end
end

