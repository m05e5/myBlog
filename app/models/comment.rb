class Comment < ApplicationRecord
  has_one :posts
  has_one :users
end
