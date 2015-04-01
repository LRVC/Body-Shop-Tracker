require 'rails_helper'

feature 'User can sign in with valid data' do
  scenario 'visit sign up page and enter valid data' do
    user = User.create!(first_name: "Neil", last_name: "Armstrong", username: "neiarm001", password: "armstrong001")

    visit root_path

    click_on 'Sign In'

    fill_in :username, with: 'neiarm001@example.com'
    fill_in :password, with: 'armstrong001'
    click_on 'Sign In'
  end
end
