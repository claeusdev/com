require 'rails_helper'

describe 'store creation', :type => :feature do
	it 'allows user to create store' do
		visit root_path

		fill_in 'Email', with: 'nana@yahoo.com'
		fill_in 'Password', with: 'pasword'
		fill_in 'Password confirmation', with: 'pasword'
		fill_in 'Name', with: 'Claeus'
		click_button "Create your store"

		expect(page).to have_content('Store created successfully!')
	end
end