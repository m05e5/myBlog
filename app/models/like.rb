class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user
  def update_count
    l_counter = Post.find_by(id: 1)
    l_counter.like_counter = 1
    l_counter.save
  end
end
