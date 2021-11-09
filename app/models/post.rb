class Post < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  has_many :comments, foreign_key: 'post_id'
  has_many :likes, foreign_key: 'post_id'

  after_validation :update_post_count

  def last_comments(the_post_id)
    Comment.where("posts_id = #{the_post_id}", params[:posts_id]).limit(5).order(created_at: :desc)
  end

  private

  def update_post_count
    count = User.find_by(id: 1)
    count.post_counter = 1
    count.save
  end
end
