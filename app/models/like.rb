class Like < ApplicationRecord
  has_one :posts
  has_one :users
end
