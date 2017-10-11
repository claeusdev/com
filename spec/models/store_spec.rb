require 'rails_helper'

RSpec.describe Store, type: :model do
	describe 'validation' do
		it { should validate_presence_of :name }
	end


	describe 'associations' do
		it { should belong_to :user }
	end
end
