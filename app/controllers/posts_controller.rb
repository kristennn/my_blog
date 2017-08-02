class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new

    @post.create(params[:post].permit(:title, :content))
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end

end
