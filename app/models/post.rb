class Post < ApplicationRecord
  has_one :users
  has_many :comments
  has_many :likes
end
