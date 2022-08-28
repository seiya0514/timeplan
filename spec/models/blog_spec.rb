require 'rails_helper'
RSpec.describe Blog, type: :model do
  before do
    @blog = FactoryBot.create(:blog)
    sleep 0.1
  end

  describe '予定の登録' do
    context '予定登録ができるとき' do
      it '全ての入力事項が、存在すれば登録できる' do
        expect(@blog).to be_valid
      end
      it 'タイトルが空欄でなければ登録できる' do
        @blog.title = "test"
        expect(@blog).to be_valid
      end
      it '時間が空欄でなければ登録できる' do
        @blog.start_time = "2022-08-26 12:00:00"
        expect(@blog).to be_valid
      end
    end
    context '登録ができないとき' do
      it 'タイトルが空欄だと出品できない' do
        @blog.title = nil
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Titleを入力してください")
      end
      it '時間が空欄だと出品できない' do
        @blog.start_time = nil
        @blog.valid?
        expect(@blog.errors.full_messages).to include("Start timeを入力してください")
      end
    end
  end
end
