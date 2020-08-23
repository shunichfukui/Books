class BooksController < ApplicationController
  before_action :search_book, only: [:index, :search]

  def new
    @book = Book.new
  end

  def index
   @books =Book.all
   @book =Book.includes(:user)
   set_book_column 
  end

  def show
    @book = Book.find(params[:id])
    @message = Message.new
    @favorite = Favorite.new
  end

  def destroy
    book= Book.find(params[:id])
    book.destroy
    redirect_to  books_path 
  end

  def create   
    @book = Book.new(book_params)
    if @book.valid?
      @book.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  def search
    @results = @p.result
    @book = @results.includes(:book)
  end
  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to root_path
  end

  private
  def book_params
    params.require(:book).permit(:name, :content,:genre_id,:image,:tag_name).merge(user_id: current_user.id)
  end

  def search_book
    @p = Book.ransack(params[:q]) 
  end
  def set_book_column
    @book_name = Book.select("tag_name").distinct 
   end
end
