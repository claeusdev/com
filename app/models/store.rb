class Store < ApplicationRecord
	extend FriendlyId
  friendly_id :name, use: :slugged
  
  belongs_to :user
  belongs_to :category

  has_many :products, dependent: :destroy
  
  validates :name, presence: true


  # before_validation :check_for_existing_user_store

  # private
  
  # def :check_for_existing_user_store(user)
  # 	Store.where(user_id: user.id)
  # end
end
