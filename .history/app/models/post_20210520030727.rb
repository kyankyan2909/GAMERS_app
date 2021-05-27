class Post < ApplicationRecord
  belongs_to :user
   
  def user
    return find_by
  end
end
