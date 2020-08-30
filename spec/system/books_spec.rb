require 'rails_helper'

RSpec.describe '書籍投稿', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @book = FactoryBot.build(:book)
  end
  context '本の投稿ができるとき'do
    it 'ログインしたユーザーは新規投稿できる' do
      # ログインする
      visit new_user_session_path
      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq root_path
      # 投稿ページに移動する
      visit new_book_path
      # フォームに情報を入力する
      fill_in 'book_name', with: @book.name
      fill_in 'book_tag_name', with: @book.tag_name
      fill_in 'book_content', with: @book.content
      # トップページに遷移する
      visit root_path
    end
  end
  context '本投稿ができないとき'do
    it 'ログインしていないと新規投稿ページに遷移できない' do
      # トップページに遷移する
      visit root_path
      # 新規投稿ページへのリンクがない
      expect(page).to have_no_content('Post A Book')
    end
  end
end

RSpec.describe '本詳細', type: :system do
  before do
    @book = FactoryBot.create(:book)
  end
  it '本詳細ページに遷移してコメント投稿欄が表示される' do
    # 詳細ページに遷移する
    visit book_path(@book)
    # 詳細ページに本の内容が含まれている
    expect(page).to have_content("#{@book.name}")
    expect(page).to have_content("#{@book.tag_name}")
    expect(page).to have_content("#{@book.content}")
  end
end