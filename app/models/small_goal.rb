class SmallGoal < ApplicationRecord
  
  has_many :small_goal_users, dependent: :destroy
  has_many :users, through: :small_goal_users
  
end
