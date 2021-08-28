# frozen_string_literal: true

require 'rails_helper'


RSpec.describe 'Userモデルのテスト', type: :model do

  describe 'アソシエーションのテスト' do
    context 'Bookモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:big_goals).macro).to eq :has_many
      end
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:medium_goals).macro).to eq :has_many
      end
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:small_goals).macro).to eq :has_many
      end
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:look_backs).macro).to eq :has_many
      end
    end
  end

end
