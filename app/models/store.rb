class Store < ApplicationRecord
	extend FriendlyId
  friendly_id :name, use: :slugged
  
  belongs_to :user
  has_many :products
  validates :name, presence: true

  accepts_nested_attributes_for :user

  # before_validation :check_for_existing_user_store

  # private
  
  # def :check_for_existing_user_store(user)
  # 	Store.where(user_id: user.id)
  # end
end
