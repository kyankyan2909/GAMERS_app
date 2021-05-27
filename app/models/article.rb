class Article < ApplicationRecord
  def self.search(search)
    
    search ? where("content Like ? ","%#{search}%") : all
  end
end