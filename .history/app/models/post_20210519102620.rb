class Post < ApplicationRecord
  belongs_to :user

  def user
   return .find_by(id: params[:id])
  end
end
