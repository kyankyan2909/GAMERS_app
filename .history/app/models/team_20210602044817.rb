class Team < ApplicationRecord
  has_many :users, through: :team_users
  acceots
end
