class Product < ApplicationRecord

	extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :store

  has_many :assets, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  accepts_nested_attributes_for :assets, :allow_destroy => true
  mount_uploader :image, AvatarUploader

  # Validations

  validates :name, :description, :price, :assets, :store, :image, presence: true
  validates :price, numericality: true
end
