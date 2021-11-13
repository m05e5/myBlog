class UsersController < ApplicationController
  def index
    @users = User.order(created_at: :desc)
  end

  def show
    @user = User.find_by(id: params[:id])
    @posts = Post.where(user_id: params[:id]).limit(3).order(created_at: :desc).include(:comments)
  end
end
