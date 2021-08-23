class MediumGoal < ApplicationRecord
  
  has_many :medium_goal_users, dependent: :destroy
  has_many :users, through: :medium_goal_users
  
end
