class User < ApplicationRecord
  has_many :comments
  has_many :likes
  has_many :posts

  def my_recent_posts(the_user_id)
    Posts.where("users_id = #{the_user_id}", params[:users_id]).limit(3).order(created_at: :desc)
  end
end
