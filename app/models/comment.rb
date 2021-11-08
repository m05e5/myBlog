class Comment < ApplicationRecord
  has_one :posts
  has_one :users

  c_counter = Post.find_by(title: '')
  c_counter.CommentsCounter += 1
  c_counter.save
end
