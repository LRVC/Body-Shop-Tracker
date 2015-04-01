require 'rails_helper'
#Finish tests when syntax is known
describe AuthenticationController do
  describe 'GET #create' do
    xit 'creates a new session with valid parameters' do
      user = User.create!(first_name: "Neil", last_name: "Armstrong", username: "neiarm001", password: "armstrong001")
    end
  end
end
