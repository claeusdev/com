require 'rails_helper'


describe 'user authentication' do
	# it 'allows signin with valid credentials' do
	# 	user = create(:user)
	# 	sign_user_in(user)
	# 	expect(page).to have_content('Signed in successfully')
	# end

	# it ' does not allow signin with invalid credentials' do
	# 	user = create(:user)
	# 	sign_user_in(user)

	# 	expect(page).to have_content('Invalid email or password')
	# end


	# it 'allows user to sign out' do
	# 	user = create(:user)
	# 	sign_user_in(user)

	# 	visit root_path
	# 	click_link "Sign out"
	# 	expect(page).to have_content('Signed out successfully')

	# end
end



def sign_user_in(user)
	visit new_user_registration_path
	fill_in 'Email', with: 'nana@yahoo.com'
	fill_in 'Password', with: 'apassword'
	click_button 'Sign In'
end