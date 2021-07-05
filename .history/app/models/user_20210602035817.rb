class User < ApplicationRecord
  validates :name, presence: true
  has_many :posts
  has_many :groups, through: :group_users
 
end
