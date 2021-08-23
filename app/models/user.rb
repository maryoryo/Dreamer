class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  attachment :image, destroy: false
  
  has_many :schedules, dependent: :destroy
  
  has_many :big_goals, dependent: :destroy
  
  has_many :medium_goal_users, dependent: :destroy
  has_many :medium_goals, through: :medium_goal_users
  
  has_many :small_goal_users, dependent: :destroy
  has_many :small_goals, through: :small_goal_users
  
  validates :name, presence: true
end
