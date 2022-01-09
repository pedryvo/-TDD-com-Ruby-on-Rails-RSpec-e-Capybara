require 'rails_helper'

feature "Welcome", type: :feature do
  scenario 'show welcome message' do
    visit(root_path)
    expect(page).to have_content('Welcome!')
  end

  scenario 'verify clients register link' do
    visit root_path
    expect(page).to have_selector('ul li a')
    expect(find('ul li')).to have_link('Register customer')
  end
end
