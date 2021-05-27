class User < ApplicationRecord
  validates :name, presence: true
  has_many :posts

  def posts
  returnPost.find_by(id: params[:id])
  end
end
