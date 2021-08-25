class SmallGoal < ApplicationRecord
  
  belongs_to :user
  
  validates :small_goal_content, presence: true
  
end
