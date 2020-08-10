class RoomsController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @room = Room.new
  end
  def create
    @book = Book.find(params[:book_id])
    @room = Room.create(book_params)
  end
  def index
    @book = Book.find(params[:book_id])
    @rooms = Room.all
  end

  private

  def book_params
    params.require(:room).permit(:place, :user_id).merge(user_id: current_user.id, book_id: params[:book_id])
  end
end
