class BooksController < ApplicationController
  before_action :search_book, only: [:index, :search]

  def new
    @book = BooksTag.new
  end

  def index
   @books =Book.all
   @book =Book.includes(:room,:user)
   @room = @book.includes(:room)
   set_book_column 
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    book= Book.find(params[:id])
    book.destroy
    redirect_to  books_path 
  end

  def create   
    @book = BooksTag.new(book_tag_params)
    if @book.valid?
      @book.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  def search
    @results = @p.result
   
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

  def book_tag_params
    params.require(:books_tag).permit(:name, :content,:genre_id,:image,:tag_name).merge(user_id: current_user.id)
  end
  def book_params
    params.require(:book).permit(:name, :content,:genre_id,:image).merge(user_id: current_user.id)
  end

  def search_book
    @p = Book.ransack(params[:q]) 
  end
  def set_book_column
    @book_name = Book.select("name").distinct 
   end
end
