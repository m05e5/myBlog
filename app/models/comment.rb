class Comment < ApplicationRecord
  has_one :posts
  has_one :users
  def update_count(p_title)
    c_counter = Post.find_by(title: p_title.to_s)
    c_counter.CommentsCounter += 1
    c_counter.save
  end
end
