class User < ApplicationRecord
  has_many :comments
  has_many :likes
  has_many :posts

  Comment.where('title = ?', params[:title]).limit(5).order(created_at: :desc)
end
