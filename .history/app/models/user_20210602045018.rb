class User < ApplicationRecord
  validates :name, presence: true
  has_many :posts
  has_
  has_many :teams, through: :team_users
 
end
