require 'rails_helper'

feature 'User can sign in with valid data' do
  scenario 'visit sign up page and enter valid data' do
    visit root_path

    click_on 'Sign In'

    fill_in :first_name, with: 'Neil'
    fill_in :last_name, with: 'Armstrong'
    fill_in :email, with: 'moonfirst@example.com'
    fill_in :password, with: 'moon'
    within '.form' do
      click on 'Create User'
    end
  end
end
