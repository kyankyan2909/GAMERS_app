class Group < ApplicationRecord
  has_many :groups, through: :group_users
end
