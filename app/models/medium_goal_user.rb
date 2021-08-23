class MediumGoalUser < ApplicationRecord
  belongs_to :user
  belongs_to :medium_goal
end
