class UsersController < ApplicationController
  def index
    @users = User.order(created_at: :desc)
  end

  def show
    @user = User.find_by(id: params[:id])
    @posts = Post.where(user_id: params[:id]).limit(5)
  end
end
