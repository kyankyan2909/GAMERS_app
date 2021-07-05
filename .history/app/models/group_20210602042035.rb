class Group < ApplicationRecord
  has_many :users, through: :
end
