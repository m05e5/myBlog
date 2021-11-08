class Like < ApplicationRecord
  has_one :posts
  has_one :users
  def update_count(p_title)
    l_counter = Post.find_by(title: p_title.to_s)
    l_counter.LikesCounter += 1
    l_counter.save
  end
end
