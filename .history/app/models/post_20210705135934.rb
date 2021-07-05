class Post < ApplicationRecord
  validates :content,{presence: true}
  validates :content,{lengt}
  belongs_to :user
  
  
end
