class User < ApplicationRecord
  validates :name, presence: true
  has_many :posts
  has_many :teams, through: :group_users
 
end
