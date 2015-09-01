class PostsController < ApplicationController

  def index
  end

  def show
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new
    @post.user = current_user
    @post.post_content = post_params[:post_content]
    if @post.save
      redirect_to root_path
    elsif
      render 'new'
    end
  end

  private

    def post_params
      params.require(:post).permit(:post_content)
    end


end
