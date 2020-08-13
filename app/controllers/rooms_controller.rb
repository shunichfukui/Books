class RoomsController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @room = @book.room
  end
  def create
    @room = Room.new(room_params)
    @book = Book.find(params[:book_id])
    if @room.save
      redirect_to  "/books/#{@book.id}/rooms"
    else
      render :new
    end
  end
  def index
    @room= Room.all
  end

  private
  def room_params
    params.require(:room).permit(:field,:book_id, user_ids:[]).merge( book_id: params[:book_id])
  end
end
