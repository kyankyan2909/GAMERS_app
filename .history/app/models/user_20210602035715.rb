class User < ApplicationRecord
  validates :name, presence: true
  has_many :users
  has_many :posts, through: :group_users
 
end
