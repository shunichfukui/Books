require 'rails_helper'
describe Room, type: :model do
  before do
    @room = FactoryBot.build(:room)
  end

  describe 'ルーム機能' do
    
    it "fieldが空だと登録できない" do
      @room.errors[:field]
    end
  end
end
