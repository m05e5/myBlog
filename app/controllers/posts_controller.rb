class PostsController < ApplicationController
  def index
    @posts = Post.where(user_id: params[:user_id]).order(created_at: :desc)
    @user = User.find_by(id: params[:user_id])
  end

  def show
    @post = Post.find_by(id: params[:id])
    @comments = Comment.where(post_id: params[:id]).order(created_at: :desc)
  end

  def create_post
    @post = Post.new
    @post.user_id = current_user.id
  end

  def create
    @post = Post.new
    @post.likes_counter = 0
    @post.comments_counter = 0
    user = current_user
    @post.user_id = user.id
    temp = params[:post]
    text = temp[:text]
    title = temp[:title]
    @post.text = text
    @post.title = title

    redirect_to("/users/#{user.id}/posts/#{@post.id}") if @post.save && post_params
  end
  
  private

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
