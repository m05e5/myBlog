class UsersController < ApplicationController
  def index
    @users = User.order(created_at: :desc)
  end

  def show
    @user = User.find_by(id: params[:id])
    cookies[:current_user_id] = @user.id
    @posts = Post.where(user_id: params[:id]).limit(3).order(created_at: :desc)
  end
end
