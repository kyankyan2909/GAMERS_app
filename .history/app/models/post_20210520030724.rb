class Post < ApplicationRecord
  belongs_to :user
   
  def user
    return find
  end
end
