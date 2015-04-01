require 'rails_helper'

describe User do

  before :each do
    User.destroy_all
    @user = User.create!(first_name: "Neil", last_name: "Armstrong", username: "neiarm001", password: "armstrong001")
  end

  it 'should have a valid first name' do
    @user.first_name = 'Neil'
    expect(@user).to be_valid
    expect(@user.first_name).to eq('Neil')
  end

  it 'should have a valid last name' do
    @user.last_name = 'Armstrong'
    expect(@user).to be_valid
    expect(@user.last_name).to eq('Armstrong')
  end

  it 'should have a valid username' do
    @user.username = 'neiarm001'
    expect(@user).to be_valid
    expect(@user.username).to eq('neiarm001')
  end

  it 'should have a valid password' do
    @user.password = 'armstrong001'
    expect(@user).to be_valid
    expect(@user.password).to eq('armstrong001')
  end

end
