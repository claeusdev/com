class Store < ApplicationRecord
  belongs_to :user

  validates :name, presence: true

  accepts_nested_attributes_for :user

  # before_validation :check_for_existing_user_store

  # private
  
  # def :check_for_existing_user_store(user)
  # 	Store.where(user_id: user.id)
  # end
end
