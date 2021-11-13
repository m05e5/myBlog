class User < ApplicationRecord
  validates :name, :bio, presence: true
  validates :posts_counter, numericality: { greater_than_or_equal_to: 0 }

  has_many :comments, foreign_key: 'user_id'
  has_many :likes, foreign_key: 'user_id'
  has_many :posts, foreign_key: 'user_id'

  def my_recent_posts
    posts.limit(3).order(created_at: :desc)
  end
end
