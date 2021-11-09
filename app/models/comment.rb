class Comment < ApplicationRecord
  validates :text, presence: true

  belongs_to :post
  belongs_to :user

  after_validation :update_comment_count

  private

  def update_comment_count
    c_counter = Post.find_by(id: 2)
    c_counter.comment_counter = 1
    c_counter.save
  end
end
