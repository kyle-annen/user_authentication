class PostsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root
    elsif
      render 'new'
    end
  end

  private

    def post_params
      params.require(:post).permit(:post_content)
    end


end
