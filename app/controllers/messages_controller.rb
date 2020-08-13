class MessagesController < ApplicationController
  def index
    @room =Room.find(params[:room_id])
    @book = Book.find(params[:book_id])
    @message =Message.all
  end

  def new
    @room = Room.find(params[:room_id])
    @book = Book.find(params[:book_id])
    @messages = Message.all
    @message = Message.new
  end

  def create
    @room = Room.find(params[:room_id])
    @book = Book.find(params[:book_id])
    @message = @book.build_message(message_params)
    if @message.save!
    ActionCable.server.broadcast 'message_channel', js_content: @message
    redirect_to " /books/#{@book.id}/rooms/#{@room.id}/messages"
    end
  end

  private 
 def message_params
  params.require(:message).permit(:text).merge(user_id: current_user.id,book_id: params[:book_id],room_id: params[:room_id])
 end
end
