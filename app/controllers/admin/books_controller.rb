class Admin::BooksController < Admin::AdminController
  # before_action :authenticate_user!, except: [:index,:show]
  before_action :set_book, only: [:edit, :update, :destroy]

  # before_action :check_admin 
=begin 
  # GET /books
  # GET /books.json
  def index
    @books = Book.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end
=end
  # GET /books/new
  def new
    @book = Book.new
   @author = Author.new
  end

  # GET /books/1/edit
  def edit
    @author = Author.new
  
  end

  # POST /books
  # POST /books.json

  
  def create
    @book = Book.new(book_params)


    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
 #       increase_added(@book)
=begin
user = User.find_by(id: @book.user_id)
user.added = user.added.to_i + 1
user.save
=end
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
        
                
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :language, :description, :user_id, :author_id, :genre_id, :location_id, :rating,:balance,:holder_id, :image, :available)
    end
end
