class Like < ApplicationRecord
  has_one :posts
  has_one :users
  def update_count(p_title, value)
    l_counter = Post.find_by(title: p_title.to_s)
    l_counter.update(LikesCounter: value)
  end
end
