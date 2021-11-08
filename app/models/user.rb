class User < ApplicationRecord
  has_many :comments, foreign_key: 'user_id'
  has_many :likes, foreign_key: 'user_id'
  has_many :posts, foreign_key: 'user_id'

  def my_recent_posts(the_user_id)
    Posts.where("users_id = #{the_user_id}", params[:users_id]).limit(3).order(created_at: :desc)
  end
end
