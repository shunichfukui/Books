class BooksController < ApplicationController
  def new
    @book = BooksTag.new
  end

  def index
   @books =Book.all.order(created_at: :desc)
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to  books_path 
  end

  def create
    # @book = Book.new(book_params)
   
    @book = BooksTag.new(book_params)
    if @book.valid?
      @book.save
      redirect_to root_path
    else
      render 'new'
    end
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
    params.require(:books_tag).permit(:name, :content,:genre_id,:image,:tag_name).merge(user_id: current_user.id)
  end

end
