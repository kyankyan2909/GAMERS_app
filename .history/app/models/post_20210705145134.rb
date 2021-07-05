class Post < ApplicationRecord
  validates :content,{presence: true}
  validates :content,length:{maximu: :100}
  belongs_to :user
  
  
end
