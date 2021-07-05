class Post < ApplicationRecord
  validates :content,{presence: true}
  validates :content,{}
  belongs_to :user
  
  
end
