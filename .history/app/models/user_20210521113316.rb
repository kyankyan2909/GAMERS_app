class User < ApplicationRecord
  validates :name, presence: true
  has_many :posts

  def posts
  return
  end
end
