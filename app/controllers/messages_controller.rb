class MessagesController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @messages =Message.all
    @message = @book.messages
      ActionCable.server.broadcast 'message_channel', js_content: @message
      
  end

  def create
    @book = Book.find(params[:book_id])
    @message = @book.messages.new(message_params)
    if @message.save!
    ActionCable.server.broadcast 'message_channel', js_content: @message
    redirect_to  new_book_message_path(@book.id)
    end
  end

  private 
 def message_params
  params.require(:message).permit(:text).merge(user_id: current_user.id,book_id: params[:book_id])
 end
end
