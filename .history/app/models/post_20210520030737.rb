class Post < ApplicationRecord
  belongs_to :user
   
  def user
    return User.f
  end
end
