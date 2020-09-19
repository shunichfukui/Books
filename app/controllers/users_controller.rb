class UsersController < ApplicationController
  def favorites
    # @book = Book.find_by(id: params[:id])
    # @user = User.find_by(id: params[:id])
    @favorite = current_user.favorite_books
    @user = current_user
    @favorites = Favorite.where(user_id: @user.id).all
  end
end
