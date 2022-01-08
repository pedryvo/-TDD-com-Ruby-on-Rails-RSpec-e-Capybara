require 'rails_helper'

feature "Welcome", type: :feature do
  scenario 'show welcome message' do
    visit('/')
    expect(page).to have_content('Welcome!')
  end
end
