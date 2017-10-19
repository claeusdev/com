FactoryGirl.define do
  factory :notification do
    recipient_id 1
    actor_id 1
    read_at "2017-10-19 01:00:46"
    action "MyString"
    notifiable_id 1
    notifiable ""
  end
end
