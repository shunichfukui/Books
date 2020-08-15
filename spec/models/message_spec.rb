require 'rails_helper'

RSpec.describe Message, type: :model do
  before do
    @message = FactoryBot.build(:message)
  end
  describe '商品出品機能' do
    it "textが空だと登録できない" do
      
      @message.errors[:text]    
    end
  end
end
