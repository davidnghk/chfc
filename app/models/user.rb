class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
    :rememberable, :trackable, :validatable, :masqueradable

  has_one_attached :avatar
  
  has_many :chatroom_users
  has_many :chatrooms, through: :chatroom_users
  has_many :messages
end
