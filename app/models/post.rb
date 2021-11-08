class Post < ApplicationRecord
  has_one :users
  has_many :comments
  has_many :likes

  def last_comments(the_post_id)
    Comment.where("posts_id = #{the_post_id}", params[:posts_id]).limit(5).order(created_at: :desc)
  end

  def update_count(u_name, value)
    p_count = User.find_by(name: u_name.to_s)
    p_count.update(PostsCounter: value)
  end
end
