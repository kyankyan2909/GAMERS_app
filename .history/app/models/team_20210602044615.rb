class Team < ApplicationRecord
  has_many :users, through: :team
end
