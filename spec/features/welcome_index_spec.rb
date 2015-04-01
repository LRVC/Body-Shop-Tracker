require 'rails_helper'

feature 'User can see links to sign in or sign up' do
  scenario 'user visits index page' do
    visit root_path

    within'.navbar' do
      expect(page).to have_content "Craig's Tracker"
    end

    expect(page).to have_content "Sign In"
  end
end
