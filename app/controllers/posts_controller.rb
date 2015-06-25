class PostsController < ApplicationController

  def index
    @posts = Post.all.includes(:user)
  end

  def create
    @post = Post.create params_post
    if @post.save
      render status: 201
    else
      render json: {error: 'Invalid Post'}, status: 422
    end
  end


  def update
  end

  def delete
  end

  private

  def params_post
    params.require(:post).permit(:content, :user_id)
  end
end
