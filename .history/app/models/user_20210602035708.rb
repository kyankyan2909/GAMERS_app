class User < ApplicationRecord
  validates :name, presence: true
  has_ma
  has_many :posts, through: :group_users
 
end
