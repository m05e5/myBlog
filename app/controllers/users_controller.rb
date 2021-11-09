class UsersController < ApplicationController
  def index
    @users = User.order(created_at: :desc)
  end

  def show
    @user = User.where(id: params[:id])
    @posts = Post.where(user_id: params[:id])
  end
end
