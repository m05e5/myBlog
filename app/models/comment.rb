class Comment < ApplicationRecord
  has_one :posts
  has_one :users
  def update_count(p_title, value)
    c_counter = Post.find_by(title: p_title.to_s)
    c_counter.update(CommentsCounter: value)
  end
end
