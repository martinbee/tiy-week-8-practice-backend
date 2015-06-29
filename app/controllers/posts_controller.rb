class PostsController < ApplicationController

  def index
    @posts = Post.all.includes(:user).order('id DESC').last(20)
  end

  def create
    @posts = Post.all.includes(:user).order('id DESC').last(20)
    @post = Post.create params_post
    if @post.save
      render :index, status: 201
    else
      render json: {error: 'Invalid Post'}, status: 422
    end
  end

  private

  def params_post
    params.require(:post).permit(:content, :user_id)
  end
end
