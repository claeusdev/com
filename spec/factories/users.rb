FactoryGirl.define do
  factory :user do
    sequence(email) { |n| "email#{n}yahoo.com"}
    password 'pasword'
    password_confirmation 'pasword'
  end
end
