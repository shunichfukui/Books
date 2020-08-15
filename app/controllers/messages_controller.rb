class MessagesController < ApplicationController
  def index
    @book = Book.find(params[:book_id])
    @messages =Message.all.includes(:room)
   
      ActionCable.server.broadcast 'message_channel', js_content: @message
      
  end

  def new
    @book = Book.find(params[:book_id])
    @messages =Message.all.includes(:room)
    @message = @book.message
      ActionCable.server.broadcast 'message_channel', js_content: @message
      
  end

  def create
    @room = Room.find(params[:room_id])
    @book = Book.find(params[:book_id])
    @message = @book.build_message(message_params)
    if @message.save!
    ActionCable.server.broadcast 'message_channel', js_content: @message
    redirect_to  new_book_room_message_path(@book.id,@room.id)
    end
  end

  private 
 def message_params
  params.require(:message).permit(:text).merge(user_id: current_user.id,book_id: params[:book_id],room_id: params[:room_id])
 end
end
