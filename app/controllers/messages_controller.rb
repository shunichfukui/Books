class MessagesController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @messages = Message.all
    @message = Message.new
  end

  def create
    @message = Message.new(text: params[:message][:text])
    if @message.save
      ActionCable.server.broadcast 'message_channel', content: @message
    end
  end
  private 
 def message_params
  params.require(:messages).permit(:text,:book_id).merge(book_id: params[:book_id])
 end
end
