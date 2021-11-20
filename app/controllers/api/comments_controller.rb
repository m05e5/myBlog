# Controller for users
class Api::CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @comments = Comment.where({post_id:params[:post_id]})
    render json: @comments
  end

  
end
