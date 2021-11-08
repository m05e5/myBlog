class Post < ApplicationRecord
  has_one :users
  has_many :comments
  has_many :likes

  Comment.where('posts_id = ?', params[:posts_id]).limit(3).order(created_at: :desc)
  p_count = User.find_by(name: '')
  p_count.PostsCounter += 1
  p_count.save
end
