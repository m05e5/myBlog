class Comment < ApplicationRecord
  validates :text, presence: true

  belongs_to :post, counter_cache: :comments_counter
  belongs_to :user

  after_validation :update_counter

  # private

  def update_counter
    post.increment!(:comments_counter)
  end
end
