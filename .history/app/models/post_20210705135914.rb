class Post < ApplicationRecord
  validates :content,{presence: true}
  va
  belongs_to :user
  
  
end
