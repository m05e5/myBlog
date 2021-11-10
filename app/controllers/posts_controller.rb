class PostsController < ApplicationController
  def index
    @posts = Post.where(user_id: params[:user_id]).order(created_at: :desc)
    @user = User.find_by(id: params[:user_id])
  end

  def comments_per_post(post_id)
    Comment.where(post_id: post_id).limit(5).order(created_at: :desc)
  end

  def show; end
end
