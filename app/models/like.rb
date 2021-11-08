class Like < ApplicationRecord
  has_one :posts
  has_one :users

  l_counter = Post.find_by(title: '')
  l_counter.LikesCounter += 1
  l_counter.save
end
