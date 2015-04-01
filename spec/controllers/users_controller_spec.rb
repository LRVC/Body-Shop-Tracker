require 'rails_helper'

describe UsersController do
  describe 'GET #index' do
    it 'allows user with the role estimator to see index of users' do

      user = User.create!(first_name: "Neil", last_name: "Armstrong", username: "neiarm001", password: "armstrong001")

      get :index

      expect(assigns(:users)).to eq [user]
    end
  end
end
