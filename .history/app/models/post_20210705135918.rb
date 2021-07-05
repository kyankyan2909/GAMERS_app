class Post < ApplicationRecord
  validates :content,{presence: true}
  validates :
  belongs_to :user
  
  
end
