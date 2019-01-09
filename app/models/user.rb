class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
    :rememberable, :trackable, :validatable, :masqueradable

  has_one_attached :avatar
  has_many :workflows, :class_name => "WorkFlow", foreign_key: 'incharge_user_id' 

  has_many :chatroom_users
  has_many :chatrooms, through: :chatroom_users
  has_many :messages
end
