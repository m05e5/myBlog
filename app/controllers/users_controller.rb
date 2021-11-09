class UsersController < ApplicationController
  def index
    @users = User.order(created_at: :desc)
  end

  def show; end
end
