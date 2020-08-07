class MessagesController < ApplicationController
  def index
    @book = Book.find(params[:book_id])
    @message = Message.new
    @messages = Message.all
  end

  def new
    @item = Item.find(params[:book_id])
    @message = @book.messages.new
    @messages = @book.messages.includes(:user)
  end

  def create
    @book = Book.find(params[:book_id])
    @message = @book.messages.new(message_params)
    ActionCable.server.broadcast 'message_channel', content: @message if @message.save
    redirect_to "/book/#{@book.id}/messages"
  end

  private

  def message_params
    params.require(:message).permit(:text).merge(user_id: current_user.id)
  end
end
