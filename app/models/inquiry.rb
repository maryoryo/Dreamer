class Inquiry < ApplicationRecord
  
  with_options presence: true do
    validates :name
    validates :email
    validates :subject
    validates :content
  end
  
end
