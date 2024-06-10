require './spec/spec_helper'
require './lib/user'

RSpec.describe User do
  describe '#introduction' do
    context '18歳未満の場合' do
      before do
        @user = User.new('Alice', 17)
      end

      it '未成人が返ること' do
        expect(@user.introduction).to eq('Aliceは未成人です。')
      end
    end
    context '18歳未満の場合' do
      before do
        @user = User.new('Alice', 18)
      end

      it '成人が返ること' do
        expect(@user.introduction).to eq('Aliceは成人です。')
      end
    end
  end
end
