class User < ApplicationRecord
	extend FriendlyId
  friendly_id :username, use: :slugged
  
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :store, dependent: :destroy




  def has_store(user)
  	Store.where(user_id: user.id)
  end


end
