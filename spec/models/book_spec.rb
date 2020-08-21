require 'rails_helper'
describe Book, type: :model do
  before do
    @book = FactoryBot.build(:book)
  end

  describe '商品出品機能' do
    
    it "nameが空だと登録できない" do
      @book.errors[:name]
    end
    it "contentが空だと登録できない" do
      @book.errors[:content]
    end  
    it "genre_idが空だと登録できない" do
      @book.errors[:genre_id]
    end
  end
end
