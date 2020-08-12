class MessagesController < ApplicationController
  

  def new
    @book = Book.find(params[:book_id])
    @messages = Message.all
    @message = Message.new
  
  end

  def create
    @book = Book.find(params[:book_id])
    @message = @book.build_message(message_params)
    if @message.save!
    ActionCable.server.broadcast 'message_channel', js_content: @message
    # redirect_to "book_messages_path	"
    end
  end

  private 
 def message_params
  params.require(:message).permit(:text).merge(user_id: current_user.id,book_id: params[:book_id])
 end
end
