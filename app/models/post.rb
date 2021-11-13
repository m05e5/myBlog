class Post < ApplicationRecord
  validates :title, presence: true
  validates :comments_counter, :likes_counter, numericality: { greater_than_or_equal_to: 0 }

  validates :title, length: { maximum: 250, too_long: 'the title is too long' }

  belongs_to :user, counter_cache: :posts_counter
  has_many :comments, foreign_key: 'post_id'
  has_many :likes, foreign_key: 'post_id'

  def last_comments(the_post_id)
    Comment.where("posts_id = #{the_post_id}", params[:posts_id]).limit(5).order(created_at: :desc)
  end

  after_validation :update_counter

  private

  def update_counter
    user.increment!(:posts_counter)
  end
end
