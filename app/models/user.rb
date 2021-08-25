class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :image, destroy: false

  has_many :schedules, dependent: :destroy

  has_many :big_goals, dependent: :destroy

  has_many :medium_goals, dependent: :destroy

  has_many :small_goals, dependent: :destroy

  has_many :look_backs, dependent: :destroy

  validates :name, presence: true
end
