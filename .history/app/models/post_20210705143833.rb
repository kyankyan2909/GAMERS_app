class Post < ApplicationRecord
  validates :content,{presence: true}
  validates :content,{length: :100}
  belongs_to :user
  
  
end
