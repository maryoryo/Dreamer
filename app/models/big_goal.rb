class BigGoal < ApplicationRecord
  
  belongs_to :user
  
  validates :big_goal_content, presence: true
  
end
