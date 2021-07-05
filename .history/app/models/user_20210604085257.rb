class User < ApplicationRecord
  validates :name,: presence: true
  has_many :posts
  has_many :team_users
  has_many :teams, through: :team_users
 
end
