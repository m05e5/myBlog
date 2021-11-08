class ApplicationController < ActionController::Base
  def current_user
    c_user = User.limit(1).order(created_at: :asc)
    c_user
  end
end
