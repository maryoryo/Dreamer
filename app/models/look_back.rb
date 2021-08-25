class LookBack < ApplicationRecord
  belongs_to :user
  
  enum achievement_check: {はい: 0, いいえ: 1}
  
end
