class PostsController < ApplicationController
  def index
    @posts = Post.where(user_id: params[:user_id]).order(created_at: :desc)
    @user = User.find_by(id: params[:user_id])
  end

  def show
    @post = Post.find_by(id: params[:id])
    @comments = Comment.where(post_id: params[:id]).order(created_at: :desc)
  end
end
