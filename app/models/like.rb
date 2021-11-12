class Like < ApplicationRecord
  belongs_to :post, counter_cache: :likes_counter
  belongs_to :user
  def update_counter
    post.increment!(:likes_counter)
  end
end
