class CommentsController < ApplicationController
  def create
    @comment = Comment.new
    # temp = params[:comment]
    text = params[:text]
    @comment.text = text
    user = current_user
    @comment.user_id = user.id
    @comment.post_id = params[:post_id]
    redirect_to(request.env['HTTP_REFERER'], notice: 'Comment added succesfully') if comment_params && @comment.save
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to(request.env['HTTP_REFERER'], notice: 'Comment deleted succesfully')
  end

  private

  def comment_params
    params.permit(:text)
  end
end
# 77946398 plombier emanuel
