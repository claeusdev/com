class Product < ApplicationRecord
	extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :store

  has_many :assets, dependent: :destroy
  accepts_nested_attributes_for :assets, :allow_destroy => true
  mount_uploader :image, AvatarUploader
end
