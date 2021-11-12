class ApplicationController < ActionController::Base
  def current_user
    User.first
  end
  # @current_user = User.first
end
