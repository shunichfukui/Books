class BookController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @Books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @message = Message.new
    # @item = Item.includes(:user,:item_purchase)
  end

  def destroy
    @book = Book.find(params[:id])
    item.destroy
  end

  def create
    @book = Book.new(book_params)

    redirect_to root_path if @item.save
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
    params.require(:book).permit(:name, :content,:image).merge(user_id: current_user.id)
  end

end
