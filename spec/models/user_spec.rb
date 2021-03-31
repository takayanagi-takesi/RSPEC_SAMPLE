require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do

  #let(:params) {{name: "satou", age: 1}}
  #let(:params2) {{name: "satou", age: 15}}
  #let(:params3) {{name: "satou", age: 30}}
  let(:params) {{name: "satou"}}
  it "年齢1:ユーザーの名前が取得できること" do
    #user = User.new(name: "satou", age: 1)
    params.merge!(age: 1)
    user = User.new(params)
    expect(user.disp_name).to eq "satouちゃん"
  end
  it "年齢15:ユーザーの名前が取得できること" do
    #user = User.new(name: "satou", age: 15)
    params.merge!(age: 15)
    user = User.new(params)
    expect(user.disp_name).to eq "satouくん"
  end
  it "年齢20:ユーザーの名前が取得できること" do
    #user = User.new(name: "satou", age: 30)
    params.merge!(age: 20)
    user = User.new(params)
    expect(user.disp_name).to eq "satouさん"
  end
  end
end
