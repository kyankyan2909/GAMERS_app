class Post < ApplicationRecord
  belongs_to :user
   
  def user
    return User
  end
end
