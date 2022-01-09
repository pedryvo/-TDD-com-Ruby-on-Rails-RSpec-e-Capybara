require 'rails_helper'

feature 'Customers', type: :feature do
  scenario 'verify customer register link' do
    visit root_path
    expect(page).to have_link('Register customer')
  end

  scenario 'verify link of new customer' do
    visit root_path
    click_on('Register customer')
    expect(page).to have_content('List of customers')
    expect(page).to have_link('New customer')
  end

  scenario 'verify new customer form' do
    visit customers_path
    click_on('New customer')
    expect(page).to have_content('New customer')
  end

  scenario 'register a valid customer' do
    customer_name = Faker::Name.name

    visit new_customer_path
    fill_in('Name', with: customer_name)
    fill_in('E-mail', with: Faker::Internet.email)
    fill_in('Phone', with: Faker::PhoneNumber.phone_number)
    attach_file('Avatar', "#{Rails.root}/spec/fixtures/avatar.png")
    choose(option: ['Yes', 'No'].sample)
    
    click_on('Register customer')

    expect(page).to have_content('Customer registered with success!')
    expect(Customer.last.name).to eq(customer_name)
  end
end
