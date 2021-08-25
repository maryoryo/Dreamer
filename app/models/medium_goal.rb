class MediumGoal < ApplicationRecord
  
  belongs_to :user
  
  validates :medium_goal_content, presence: true
  
end
