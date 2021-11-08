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

  def update_post_count(u_name, value)
    p_count = User.find_by(name: u_name.to_s)
    p_count.update(PostsCounter: value)
  end
end
