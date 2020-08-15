require 'rails_helper'

RSpec.describe Tag, type: :model do
  before do
    @tag = FactoryBot.build(:tag)
  end
  describe 'タグ機能' do
    it "tag_nameが空だと登録できない" do
      @tag.errors[:tag_name]    
    end
  end
end
