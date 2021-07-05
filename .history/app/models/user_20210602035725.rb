class User < ApplicationRecord
  validates :name, presence: true
  has_many :poosts
  has_many :posts, through: :group_users
 
end
