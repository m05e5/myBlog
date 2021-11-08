class ApplicationController < ActionController::Base
  def current_user
    User.limit(1).order(created_at: :asc)
  end
end
