require 'rails_helper'
describe User do
 before do
   @user = FactoryBot.build(:user)
 end

 describe 'ユーザー新規登録' do

   context '新規登録がうまくいかないとき' do
     it "nicknameが空だと登録できない" do
       @user.nickname = ''
       @user.valid?
       expect(@user.errors.full_messages).to include("ニックネームを入力してください")
     end
     it "emailが空では登録できない" do
       @user.email = ""
       @user.valid?
       expect(@user.errors.full_messages).to include("Eメールを入力してください")
     end
     it "passwordが空では登録できない" do
       @user.password = ""
       @user.valid?
       expect(@user.errors.full_messages).to include("パスワードを入力してください")
     end
     it "passwordが5文字以下であれば登録できない" do
       @user.password = "00000"
       @user.password_confirmation = "00000"
       @user.valid?
       expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
     end
     it "passwordが存在してもpassword_confirmationが空では登録できない" do
       @user.password_confirmation = ""
       @user.valid?
       expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
     end
   end
 end
end