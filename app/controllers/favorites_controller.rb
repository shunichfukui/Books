class FavoritesController < ApplicationController
  def create
    # こう記述することで、「current_userに関連したFavoriteクラスの新しいインスタンス」が作成可能。
    # つまり、favorite.user_id = current_user.idが済んだ状態で生成されている。
    # buildはnewと同じ意味で、アソシエーションしながらインスタンスをnewする時に形式的に使われる。
    @book = Book.find(params[:book_id])
    @favorite = current_user.favorites.build(book_id: params[:book_id])
    @favorite.save
    redirect_to books_path
  end

  def destroy
    @book = Book.find(params[:book_id])
    @favorite = Favorite.find_by(book_id: params[:book_id], user_id: current_user.id)
    @favorite.destroy
    redirect_to books_path
  end
end
