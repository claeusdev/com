class Category < ApplicationRecord
	extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :stores, dependent: :destroy
	mount_uploader :avatar, AvatarUploader
end
