class Comment < ApplicationRecord
  validates :text, presence: true

  belongs_to :posts
  belongs_to :users

  after_validation :update_comment_count

  private

  def update_comment_count(p_title, value)
    c_counter = Post.find_by(title: p_title.to_s)
    c_counter.update(CommentsCounter: value)
  end
end
