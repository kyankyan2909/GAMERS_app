class Post < ApplicationRecord
  belongs_to :user
  def user
    return User.find_by
  end
end
