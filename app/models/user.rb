class User < ApplicationRecord
	extend FriendlyId
  friendly_id :username, use: :slugged
  
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :store, dependent: :destroy

  has_many :followings
  has_many :followed_stores, through: :followings


  def has_store(user)
  	Store.where(user_id: user.id)
  end

  def following? store, user
    store.follower_ids.include? user.id
  end

  def follow (store, user)
    store.followers << user
  end

  def unfollow (store, user)
    store.followers.delete(user.id)
  end


end
