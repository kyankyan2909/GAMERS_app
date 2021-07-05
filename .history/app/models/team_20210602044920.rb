class Team < ApplicationRecord
  has_many :users, through: :team_users
  accepts_nested_attributes_for :team_user
end
